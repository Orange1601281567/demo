package com.example.demo.system.users.controller;


import com.example.demo.domain.OrangeReturn;
import com.example.demo.system.users.domain.User;
import com.example.demo.system.users.service.UserService;
import com.example.demo.utils.Md5Utils;;
import com.example.demo.utils.UserRegisteAndLogin;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.*;


@Controller
@RequestMapping("/User")
@CrossOrigin
public class UserController {
    @Autowired
    private UserService userService;
    private String prefix = "User";

    @GetMapping(value = "/list")
    @RequiresPermissions("user:list")
    public String list() {
         return prefix+"/list";
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
            file.transferTo(newFile);
            User user1 = new User();
            user1.setUserid(userid);
            user1.setFace(newFileName);
            return userService.uploadface(user1);
    }

}
