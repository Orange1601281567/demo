package com.example.demo.system.users.controller;


import com.example.demo.domain.OrangeReturn;
import com.example.demo.system.users.domain.User;
import com.example.demo.system.users.service.UserService;
import com.example.demo.utils.Excel.ExcelUtils;
import com.example.demo.utils.Md5Utils;;
import com.example.demo.utils.UserRegisteAndLogin;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/User")
@CrossOrigin
@Api(description = "用户管理")
public class UserController {
    @Autowired
    private UserService userService;
    private String prefix = "User";

    @GetMapping(value = "/list")
    @RequiresPermissions("user:list")
    public String list() {
         return prefix+"/list";
    }

    @GetMapping(value = "/listadd")
    public String listadd() {
        return prefix+"/listadd";
    }

    @GetMapping(value = "/add")
    public String add() {
        return prefix+"/add";
    }

    @GetMapping(value = "/edit")
    public String edit(String userid, ModelMap usermeg) {
        User user=(User)userService.findUserByID(userid).getObj();
        usermeg.put("user",user);
        return prefix+"/edit";
    }

    @GetMapping(value = "/changePwd")
    public String changePwd(String userid, ModelMap usermeg) {
        User user=(User)userService.findUserByID(userid).getObj();
        usermeg.put("user",user);
        return prefix+"/changePwd";
    }

    @GetMapping(value = "/changeImage")
    public String changeImage(String userid, ModelMap usermeg) {
        User user=(User)userService.findUserByID(userid).getObj();
        usermeg.put("user",user);
        return prefix+"/changeImage";
    }

    @PostMapping( "/del")
    @RequiresPermissions("user:del")
    @ResponseBody
    public OrangeReturn delUser(String userid) {
        return userService.delUser(userid);
    }

    @PostMapping( "/updateUserpower")
    @ResponseBody
    public OrangeReturn updateUserpower(String userid) {
        return userService.updateUserpower(userid);
    }



    @PostMapping( "/findlist")
//    @RequiresPermissions("user:list")
    @ResponseBody
    public User findlist(String userid){
        User a=(User)userService.findUserByID(userid).getObj();
        return a;
    }

    @ApiOperation(value = "用户列表",notes = "查询所有已注册过的用户详细信息" )
    @PostMapping( "/findAllUser")
    @RequiresPermissions("user:list")
    @ResponseBody
    public HashMap<String,Object> findAllUser(int limit,int page,String userid) {

        Page pages=PageHelper.startPage(page,limit);
        List<User> a=(List<User>)userService.findAllUser(userid).getObj();
        //得到分页的结果对象
        PageInfo<User> personPageInfo = new PageInfo<>(a);
        personPageInfo.setTotal(pages.getTotal());
        //得到分页中的person条目对象
        List<User> pageList = personPageInfo.getList();
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count",personPageInfo.getTotal());
        result.put("data", pageList);
        return result;
    }



    @CrossOrigin
    @PostMapping( "/updateUserImfomation")
    @ResponseBody
    public OrangeReturn updateUserImfomation(String name, String sex, String email, String phone, String userid) {
        User user = new User();
        user.setUserid(userid);
        user.setName(name);
        user.setPhone(phone);
        user.setSex(sex);
        user.setEmail(email);
        return userService.updateUserImfomation(user);
    }

    @PostMapping( "/updateUserpwd")
    @ResponseBody
    public OrangeReturn updateUserpwd(String userid,String oldPwd,String newPwd) {
        return userService.updateUserpwd(userid,oldPwd,newPwd);
    }

    @PostMapping( "/addUser")
    @ResponseBody
    public OrangeReturn addUser(String userid, String pwd, String name, String email, String sex, String phone) {
        User a = new User();
        String[] saltAndCiphertext = UserRegisteAndLogin.encryptPassword(pwd);

        a.setSalt(saltAndCiphertext[0]);
        a.setPwd(saltAndCiphertext[1]);
        a.setUserid(userid);
        a.setName(name);
        a.setEmail(email);
        a.setSex(sex);
        a.setPhone(phone);
        return userService.addUser(a);
    }

    @PostMapping( "/uploadface")
    @ResponseBody
    public OrangeReturn uploadface(@RequestParam(value = "file", required = false) MultipartFile file, String userid,HttpServletRequest request ) throws IOException {
        String fileName = file.getOriginalFilename();//获取到上传文件的名字
            //存储图片的物理路径,即电脑存放图片的位置
            String path ="C:\\load\\";;
            //新的图片名称
            String newFileName = UUID.randomUUID() +fileName.substring(fileName.lastIndexOf("."));
            //新图片
            File newFile = new File(path + newFileName);
            //将内存中的数据写入磁盘
            if (!newFile.getParentFile().exists()) {
                newFile.getParentFile().mkdirs();
            }
            file.transferTo(newFile);
            User user1 = new User();
            user1.setUserid(userid);
            user1.setFace(newFileName);
            return userService.uploadface(user1);
    }


    //批量添加用户
    @PostMapping( "/listadd")
    @ResponseBody
    public String listadd(@RequestParam(value = "file", required = false) MultipartFile file,HttpServletRequest request ) {


//        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

//        MultipartFile file = multipartHttpServletRequest.getFile("userFile");
        if(file.isEmpty()) {
            return "添加失败";
        }

        try {
            InputStream inputStream = file.getInputStream();
            List<List<Object>> list = ExcelUtils.getCourseListByExcel(inputStream, file.getOriginalFilename());
            inputStream.close();

            for (int i = 0; i < list.size(); i++) {
                List<Object> userList = list.get(i);
                User user = new User();
                user.setUserid(userList.get(0).toString());
                user.setName(userList.get(1).toString());
                user.setSex(userList.get(2).toString());
                user.setPhone(userList.get(3).toString());
                user.setEmail(userList.get(4).toString());
                //将所有用户的初始密码设置为123456
                String pwd="123456";
                String[] saltAndCiphertext = UserRegisteAndLogin.encryptPassword(pwd);
                user.setSalt(saltAndCiphertext[0]);
                user.setPwd(saltAndCiphertext[1]);
                // 通过用户id查用户信息
                OrangeReturn result = userService.findUserByID(user.getUserid());
                // 教师信息错误，直接跳过这条记录
                if(result.getCode() == null) {
                    // 执行插入操作
                    userService.addUser(user);
                }
            }
        } catch (Exception e) {
            return "批量插入数据异常";
        }

        return "批量插入数据成功";
    }



    @RequestMapping(value="/exportusers", method=RequestMethod.GET)
    @ResponseBody
    public void exportSysUsers(HttpServletRequest req, HttpServletResponse res) throws IOException{

        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String formatTime = sdf.format(d);
        String fileName="系统用户表-"+formatTime;
        //填充projects数据
        List<User> userList = (List<User>)userService.findAllUser(null).getObj();
        String columnNames[]={"用户名","昵称", "性别", "电话", "邮箱"};//列名
        String keys[] = {"userid", "name", "sex", "phone", "email"};//map中的key
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        try {
            List<Map<String, Object>> listmap = new ArrayList<Map<String, Object>>();
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("sheetName", "sheet1");
            listmap.add(map);
            for (int j = 0; j < userList.size(); j++) {
                User  user = userList.get(j);
                Map<String, Object> mapValue = new HashMap<String, Object>();
                mapValue.put("userid", user.getUserid());
                mapValue.put("name", user.getName());
                mapValue.put("sex", user.getSex());
                mapValue.put("phone", user.getPhone());
                mapValue.put("email", user.getEmail());
                listmap.add(mapValue);
            }

            ExcelUtils.createWorkBook(listmap,keys,columnNames).write(os);
        } catch (IOException e) {
            e.printStackTrace();
        }
        byte[] content = os.toByteArray();
        InputStream is = new ByteArrayInputStream(content);
        // 设置response参数，可以打开下载页面
        res.reset();
        res.setContentType("application/vnd.ms-excel;charset=utf-8");
        res.setHeader("Content-Disposition", "attachment;filename="+ new String((fileName + ".xls").getBytes(), "iso-8859-1"));
        ServletOutputStream out = res.getOutputStream();
        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            bis = new BufferedInputStream(is);
            bos = new BufferedOutputStream(out);
            byte[] buff = new byte[2048];
            int bytesRead;
            // Simple read/write loop.
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                bos.write(buff, 0, bytesRead);
            }
        } catch (final IOException e) {
            throw e;
        } finally {
            if (bis != null)
                bis.close();
            if (bos != null)
                bos.close();
        }
    }





}
