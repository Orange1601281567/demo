package com.example.demo.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipaySystemOauthTokenRequest;
import com.alipay.api.request.AlipayUserInfoShareRequest;
import com.alipay.api.response.AlipaySystemOauthTokenResponse;
import com.alipay.api.response.AlipayUserInfoShareResponse;
import com.example.demo.domain.OrangeReturn;
import com.example.demo.shiro.session.ShiroSessionListener;
import com.example.demo.shiro.token.EasyTypeToken;
import com.example.demo.system.role.service.RoleService;
import com.example.demo.system.users.domain.User;
import com.example.demo.system.users.service.UserService;
import com.example.demo.utils.MyProps;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collection;

@Controller

public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;

    @Autowired
    private MyProps myProps;
    @GetMapping("/login")
    public String find() {
        return "login";
    }

    @GetMapping("/logout" )
    public String loginout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }

    @GetMapping("/index")
    public String index(ModelMap mmap) {
//        ShiroSessionListener sessionListener = new ShiroSessionListener();
//        System.out.println(sessionListener.getSessionCount());//获取当前在线人数
        Subject subject = SecurityUtils.getSubject();
        User user1= (User)subject.getPrincipal();
        User user=(User)userService.findUserByID(user1.getUserid()).getObj();
        int role= roleService.findRoleByUserid(user.getUserid()).get(0).getId();
        user.setRole(role);
        mmap.put("user",user);
        return "index";
    }

    @GetMapping("/test")
    public String test( ) {
        return "test";
    }


//    @RequestMapping("/check")
//    public String check(String auth_code) {
//        AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do",
//                "2019092067599567", "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCN+CTn6p9dbRLYV7QgkWzZFYT/u" +
//                "qM6en7iOdzxeiFRbhIf2+jmTtMSO3EnvGI1+B91af+uHvWTsFQP6BH73GOtQ5/rXNuhDTdZhSPn7JopHk6gCV8HEXXMVvmALiURNB/+WQ3Gs" +
//                "mi59xsUHvFZFji0zQ9MKr+mi+Des8mOIPx5Q5dojP+FHy6UVL5o/sBtq8SJyPAj895HPzV6J32SvY6Yw5R6InCWSRCnEyFgpSV" +
//                "xgpqoMRrD0dipJf15A14FyrjQwxeOKrrjWy21+nK3rMgcWpTTODqLMRjdg/snNmnu5FY7A9rAn1h51z/5mnT6+FTmQCX81j8/" +
//                "9yLjOCgxvHvzAgMBAAECggEAIwfGu372IcxnKQDDDoIztIEN1zgLTMOrCVEzxlXXYMtjJ39QwXtTs5z9N8vRA/YcdRFZqHI1MG" +
//                "MC6wXdYiMoaTlVfXLlMqEbNjiW+oQ0Kc8zoWOOkiTpxyjy2YEJXmxZNJ5uuseM9c4WXWmhLdVA2sP6cVXfAk5jhzAfnLVg9t6rbiFta" +
//                "2FQiTjDsu++FlaOrq6/TCgj5kZfngOEyeBjBOD9Z3bH5u79V4w0tN0rQ4IIFmDzJgK3pRQbjENNrCtdkqGi1k9+flbsO3tuGn1mbNelPR" +
//                "WEa1mw6GcxqOFGTiysxBFWq5/Se42wpKTbQTjeG/+r4lGxBHUoBRs4dJvwUQKBgQDMhWpOWgN7HnA4lbl3bzNePkDHQDR/yj0CxkWq6JD3hU" +
//                "cU2cqVxWcnLQ6k3blvzBdNuj9GuMoGshBo1FDt9WxjfBOoJRVSGNUgX6OO35EK5VCY/3LE+uCBeMJxlwg0Hwpigz7Ow+CJHH5CEijNnUADu" +
//                "ophoFcSW7ayYRlkjgWVmQKBgQCxtB7J+nLRvIJXYeY0dc7+aNPxLrssTE8G1FE6OUAQTeLTDCn0l9BqJBRIEBYF9gJVM9ZKSLWhz6NJwfy" +
//                "C2P3hWrapluyl6p82yq90QQr1thiQBhHVvOydoSISl/BLAJQz0iRmYbz0xFMFPomDLPWLnsWVeHn+TJb+qi8j5L29awKBgQC8kX" +
//                "IfhZzaAomDkoCrHwskpI9DZu5AuK2iBj8rwjwPC4IrNlcz2gsusrtixM/5xRnjX4qB4VTb8Ydxr/hiPjtOSpMxH+fVhvHSZHu/+l+" +
//                "XxTCXsEcYWRtwJHBbHN7Cd7AyfkIFj9JReMTslCOs2ISyK2b1dklxsr/zHdW0wcFiWQKBgFI4h+JmSgf3E8vAlVYCiFK4SBAY0iut5wa+" +
//                "6BJreNPSZbfGsgbk01648NVi8/2wFOY9RNI8ECYdP20aH26fXeCOK2QOW9Js21vrrgC5M4v6xCSnWkstzcElU/GMcXcSfn/3pDXm1RnfWJZ" +
//                "dmBykibwfK0Z8Zt2drGOKdKND6/KfAoGAU7vlpk4iQ1pnVqZXqk9AckIiYbyuZCgpy9XobRRvi5warpob90mmv4itJMPVw/ACoxdkO26JYf" +
//                "Dh0Fmx8sj7+NjJ9Tvy7g/lHZ4u5ohS3NJr+mYfnywaHsG6ZJMSd5cgQpgochVPP+gt+CTJhoJqT0GjKWhJIryt4mi6SF8ziJs=", "json", "UTF-8", "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhNfsJBckmbcnKack7BJRPhh9kRtjNOMD2kjNyjMNlkN5oKyM7MYYWigSAF/N8V/Er7pDf5WpGrseCKAGXgHr5NP+stmKRk18/aykNvpgQG5K2UXxM3+xK+ixgnDY0/1Hq6k5Ko3/sPc6/9cIzSqkVDqspcuJQIthNXLfhaDeD0SFRtEuT/T+p4Kih5/ptU8tmXhtDHd0z6ELbtWiGZCsV28sx9fCYEAjja4ddirMaPK1mMVXboj+tggcHIubnxhBkTSJhiR2e953FNsiyD67otB3d9ZU8dglqzOpWRH56Tid4l9TuO79wKPhcngrGQ01n6hBCR2R4LhWkI+nLLu5lwIDAQAB", "RSA2");
//        AlipaySystemOauthTokenRequest request = new AlipaySystemOauthTokenRequest();
//        request.setCode(auth_code);
//        System.out.println(request.getCode());
//        request.setGrantType("authorization_code");
//        try {
//            AlipaySystemOauthTokenResponse oauthTokenResponse = alipayClient.execute(request);
//            System.out.println(oauthTokenResponse.getAccessToken());
//        } catch (AlipayApiException e) {
//            //处理异常
//            e.printStackTrace();
//        }
//        return "check";
//    }

    @RequestMapping("/check")
    public String check(String auth_code) {
        String APP_PRIVATE_KEY="MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCN+CTn6p9dbRLYV7QgkWzZFYT/uqM6en7iOdzxeiFRbhIf2+jmTtMSO3EnvGI1+B91af+uHvWTsFQP6BH73GOtQ5/rXNuhDTdZhSPn7JopHk6gCV8HEXXMVvmALiURNB/+WQ3Gsmi59xsUHvFZFji0zQ9MKr+mi+Des8mOIPx5Q5dojP+FHy6UVL5o/sBtq8SJyPAj895HPzV6J32SvY6Yw5R6InCWSRCnEyFgpSVxgpqoMRrD0dipJf15A14FyrjQwxeOKrrjWy21+nK3rMgcWpTTODqLMRjdg/snNmnu5FY7A9rAn1h51z/5mnT6+FTmQCX81j8/9yLjOCgxvHvzAgMBAAECggEAIwfGu372IcxnKQDDDoIztIEN1zgLTMOrCVEzxlXXYMtjJ39QwXtTs5z9N8vRA/YcdRFZqHI1MGMC6wXdYiMoaTlVfXLlMqEbNjiW+oQ0Kc8zoWOOkiTpxyjy2YEJXmxZNJ5uuseM9c4WXWmhLdVA2sP6cVXfAk5jhzAfnLVg9t6rbiFta2FQiTjDsu++FlaOrq6/TCgj5kZfngOEyeBjBOD9Z3bH5u79V4w0tN0rQ4IIFmDzJgK3pRQbjENNrCtdkqGi1k9+flbsO3tuGn1mbNelPRWEa1mw6GcxqOFGTiysxBFWq5/Se42wpKTbQTjeG/+r4lGxBHUoBRs4dJvwUQKBgQDMhWpOWgN7HnA4lbl3bzNePkDHQDR/yj0CxkWq6JD3hUcU2cqVxWcnLQ6k3blvzBdNuj9GuMoGshBo1FDt9WxjfBOoJRVSGNUgX6OO35EK5VCY/3LE+uCBeMJxlwg0Hwpigz7Ow+CJHH5CEijNnUADuophoFcSW7ayYRlkjgWVmQKBgQCxtB7J+nLRvIJXYeY0dc7+aNPxLrssTE8G1FE6OUAQTeLTDCn0l9BqJBRIEBYF9gJVM9ZKSLWhz6NJwfyC2P3hWrapluyl6p82yq90QQr1thiQBhHVvOydoSISl/BLAJQz0iRmYbz0xFMFPomDLPWLnsWVeHn+TJb+qi8j5L29awKBgQC8kXIfhZzaAomDkoCrHwskpI9DZu5AuK2iBj8rwjwPC4IrNlcz2gsusrtixM/5xRnjX4qB4VTb8Ydxr/hiPjtOSpMxH+fVhvHSZHu/+l+XxTCXsEcYWRtwJHBbHN7Cd7AyfkIFj9JReMTslCOs2ISyK2b1dklxsr/zHdW0wcFiWQKBgFI4h+JmSgf3E8vAlVYCiFK4SBAY0iut5wa+6BJreNPSZbfGsgbk01648NVi8/2wFOY9RNI8ECYdP20aH26fXeCOK2QOW9Js21vrrgC5M4v6xCSnWkstzcElU/GMcXcSfn/3pDXm1RnfWJZdmBykibwfK0Z8Zt2drGOKdKND6/KfAoGAU7vlpk4iQ1pnVqZXqk9AckIiYbyuZCgpy9XobRRvi5warpob90mmv4itJMPVw/ACoxdkO26JYfDh0Fmx8sj7+NjJ9Tvy7g/lHZ4u5ohS3NJr+mYfnywaHsG6ZJMSd5cgQpgochVPP+gt+CTJhoJqT0GjKWhJIryt4mi6SF8ziJs=";
        String ALIPAY_PUBLIC_KEY="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhNfsJBckmbcnKack7BJRPhh9kRtjNOMD2kjNyjMNlkN5oKyM7MYYWigSAF/N8V/Er7pDf5WpGrseCKAGXgHr5NP+stmKRk18/aykNvpgQG5K2UXxM3+xK+ixgnDY0/1Hq6k5Ko3/sPc6/9cIzSqkVDqspcuJQIthNXLfhaDeD0SFRtEuT/T+p4Kih5/ptU8tmXhtDHd0z6ELbtWiGZCsV28sx9fCYEAjja4ddirMaPK1mMVXboj+tggcHIubnxhBkTSJhiR2e953FNsiyD67otB3d9ZU8dglqzOpWRH56Tid4l9TuO79wKPhcngrGQ01n6hBCR2R4LhWkI+nLLu5lwIDAQAB";
        AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do",
                "2019092067599567",APP_PRIVATE_KEY, "json", "UTF-8",ALIPAY_PUBLIC_KEY,"RSA2");

        //验证登录信息(获取QQ登录的token)
        AlipaySystemOauthTokenRequest trequest = new AlipaySystemOauthTokenRequest();
        trequest.setCode(auth_code);
        trequest.setGrantType("authorization_code");
        String alipayToken=null;
        User user=new User();
        try {
            AlipaySystemOauthTokenResponse oauthTokenResponse = alipayClient.execute(trequest);
            //返回的信息
             user.setOpenid(oauthTokenResponse.getAlipayUserId());
              alipayToken = oauthTokenResponse.getAccessToken();
        } catch (AlipayApiException e) {
            //处理异常
            e.printStackTrace();
        }

        //用 token 获取 用户信息
        AlipayUserInfoShareRequest urequest = new AlipayUserInfoShareRequest();
        try {
            AlipayUserInfoShareResponse userinfoShareResponse = alipayClient.execute(urequest, alipayToken);
            if(userinfoShareResponse.getNickName() != null){
                user.setName(userinfoShareResponse.getNickName());
            }
            if(userinfoShareResponse.getAvatar() != null){
                user.setFace(userinfoShareResponse.getAvatar());
            }
        } catch (AlipayApiException e) {
            //处理异常
            e.printStackTrace();
        }

        return "test";
    }

    public static int  a=1;
    @ResponseBody
    @PostMapping("/login")
    public OrangeReturn login(String userid, String pwd,String captchaCode) {

        OrangeReturn back=new OrangeReturn();
        if(captchaCode==null)
        {
            Subject subject = SecurityUtils.getSubject();
            EasyTypeToken token = new EasyTypeToken(userid, pwd);
            subject.login(token);
            a++;
        }
        else {
            if(userid==""||userid==null){
                back.setMessage("用户名不能为空");
                back.setCode("0");
            }
            if(pwd==""||pwd==null){
                back.setMessage("密码不能为空");
                back.setCode("0");
            }
            if(captchaCode==""||captchaCode==null){
                back.setMessage("验证码不能为空");
                back.setCode("0");
            }
            Session session = SecurityUtils.getSubject().getSession();
            String captchaWord = (String) session.getAttribute("captchaWord");
            if(!captchaCode.equals(captchaWord))
            {
                back.setMessage("验证码错误");
                back.setCode("0");
            }
            else {
                try {
                    Subject subject = SecurityUtils.getSubject();
                    EasyTypeToken token = new EasyTypeToken(userid, pwd);
                    subject.login(token);
                    back.setMessage("登陆成功");
                    back.setCode("1");
                }catch (IncorrectCredentialsException ice){
                    back.setMessage("密码错误");
                    back.setCode("0");
                }catch (UnknownAccountException uae) {
                    back.setMessage("用户名错误");
                    back.setCode("0");
                }catch (ExcessiveAttemptsException eae) {
                    back.setMessage("未知错误");
                    back.setCode("0");
                }}

        }
        return back;
    }


}
