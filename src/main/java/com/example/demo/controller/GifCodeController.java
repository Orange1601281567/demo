package com.example.demo.controller;

import com.example.demo.utils.GifCaptcha;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.IOException;

@Controller
public class GifCodeController {

    @RequestMapping(value = "/getGifCode",method= RequestMethod.GET)
    public void getGifCaptcha(HttpServletResponse response,HttpServletRequest request){
        //告诉客户端，输出的格式
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/gif");
        GifCaptcha gifCaptcha =  new GifCaptcha(100,36,new Font("宋体", Font.BOLD, 20),100);
        try {
            gifCaptcha.out(response.getOutputStream());
            System.out.println("获取验证码！验证码字符为："+gifCaptcha.getWord());
            HttpSession session = request.getSession(true);
            //存入Session
            session.setAttribute("captchaWord",gifCaptcha.getWord());
            response.getOutputStream().close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
