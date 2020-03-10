package com.example.demo.utils;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@Data  //简写get  set 的注解
@ConfigurationProperties(prefix="system") //接收application.yml中的myProps下面的属性
public class MyProps {
    public String huiCalculatedOrderUrl;
}
