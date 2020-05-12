package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@MapperScan(basePackages = {"com.example.demo.*.*.dao","com.example.demo.*.dao"})
@EnableSwagger2
public class DemoApplication
//        extends SpringBootServletInitializer
{

////    打成war包时使用
//    @Override
//    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
//        return builder.sources(DemoApplication.class);
//    }

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ   启动成功   ლ(´ڡ`ლ)ﾞ  \n" +
                "            疯狂源于梦想       \n" +
                "            技术成就辉煌       \n" +
                "            好学习 更快乐       \n" +
                " http://www.edu.gov.cn \n" +
                "-------------------------------------- ");

    }

}
