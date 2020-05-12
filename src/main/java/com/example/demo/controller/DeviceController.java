package com.example.demo.controller;

import com.example.demo.Menu.dao.DeviceDao;
import com.example.demo.domain.Device;
import com.example.demo.utils.Excel.ExcelUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.util.List;

@Controller
public class DeviceController {
    @Autowired
    private DeviceDao deviceDao;
    @GetMapping("/device")
    public String index(){
        return "/device";
    }
    @ResponseBody
    @PostMapping("/lead")
    public String listadd(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request ) {


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
                Device device = new Device();
                if(userList.get(0).toString()!=null&&userList.get(0).toString()!="") {
                    String a=userList.get(0).toString();
                    device.setDeviceId(Integer.valueOf(a));
                }

                if(userList.get(1).toString()!=null&&userList.get(1).toString()!="")
                device.setDeviceName(userList.get(1).toString());
                if(userList.get(2).toString()!=null&&userList.get(2).toString()!="")
                device.setDeviceParameters(userList.get(2).toString());
                if(userList.get(3).toString()!=null&&userList.get(3).toString()!="")
                device.setDeviceSpecification(userList.get(3).toString());
                if(userList.get(4).toString()!=null&&userList.get(4).toString()!="")
                device.setDevicePrice(userList.get(4).toString());
                if(userList.get(5).toString()!=null&&userList.get(5).toString()!="")
                device.setDeviceBrand(userList.get(5).toString());
                if(userList.get(6).toString()!=null&&userList.get(6).toString()!="")
                device.setDeviceType(userList.get(6).toString());
                int a=deviceDao.insert(device);
                if(a<0){

                }

            }
        } catch (Exception e) {
            return "批量插入数据异常";
        }

        return "批量插入数据成功";
    }
}
