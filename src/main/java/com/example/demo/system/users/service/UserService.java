package com.example.demo.system.users.service;


import com.example.demo.domain.OrangeReturn;
import com.example.demo.system.users.domain.User;

public interface UserService {

    // 查询用户信息
    public OrangeReturn findUserByID(String userid);

    //管理员查询所用用户信息
    public OrangeReturn findAllUser(String userid);

    //用户更改除密码外的账户信息
    public OrangeReturn updateUserImfomation(User User);

    //修改用户密码
    public OrangeReturn updateUserpwd(String userid,String oldPwd,String newPwd);

    //用户注册
    public OrangeReturn addUser(User User);

    //用户登录
    public OrangeReturn Checkin(User User);

    //删除用户信息
    public OrangeReturn delUser(String userid);

    //设置vip
    public OrangeReturn updateUserpower(String userid);

    //修改头像
    public OrangeReturn uploadface(User User);

}
