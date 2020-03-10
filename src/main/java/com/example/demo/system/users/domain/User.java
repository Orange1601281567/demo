package com.example.demo.system.users.domain;

import java.io.Serializable;
import java.util.List;

/**
 * 用户基本信息
 * Created by wph-pc on 2018/10/28.
 */
public class User implements Serializable {
    //用户头像
    private String face = null;

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    //用户账号
    private String userid = null;
    //用户昵称
    private String name = null;
    //性别
    private String sex = null;
    //用户密码
    private String pwd = "";
    //用户邮箱地址
    private String email = null;
    //用户状态
    private String status = null;
    //用户电话
    private String phone = null;
    //用户类型
    private String type = null;
    //第三方openid
    private String openid=null;
    //盐
    private String salt=null;

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    @Override
    public String toString() {
        return "User{" +
                "face='" + face + '\'' +
                ", userid='" + userid + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", pwd='" + pwd + '\'' +
                ", email='" + email + '\'' +
                ", status='" + status + '\'' +
                ", phone='" + phone + '\'' +
                ", type='" + type + '\'' +
                ", openid='" + openid + '\'' +
                ", salt='" + salt + '\'' +
                '}';
    }
}
