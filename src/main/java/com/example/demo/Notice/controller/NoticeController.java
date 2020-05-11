package com.example.demo.Notice.controller;

import com.baidu.ueditor.ActionEnter;
import com.example.demo.utils.MyProps;
import org.springframework.stereotype.Controller;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class NoticeController {
    private MyProps myProps;
    @GetMapping("/notice")
    public String find() {
        return "/Notice/list";
    }

     @RequestMapping(value = "/config")
     public void config(HttpServletRequest request, HttpServletResponse response) {
         response.setContentType("application/json");
         String rootPath = ClassUtils.getDefaultClassLoader().getResource("").getPath() + "static/ueditor/jsp";
         try {
             response.setCharacterEncoding("UTF-8");
             String exec = new ActionEnter(request, rootPath).exec();
             System.out.println(exec);
             PrintWriter writer = response.getWriter();
             writer.write(new ActionEnter(request, rootPath).exec());
             writer.flush();
             writer.close();
         } catch (IOException e) {
             e.printStackTrace();
         }
     }
}
