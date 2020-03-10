package com.example.demo.system.users.dao;



import com.example.demo.system.users.domain.User;

import java.util.List;

public interface UserMapper {

    // 查询用户信息
    public User findUserByID(String userid);

    public void Upface(String face);

    //管理员查询所用用户信息
    public List<User> findAllUser(String userid);

    //用户更改除密码外的账户信息
    public int updateUserImfomation(User User);

    //修改用户密码
    public int updateUserpwd(String userid,String oldPwd,String newPwd);

    //用户注册
    public int addUser(User User);

    //用户登录
    public User Checkin(User User);

    //删除用户信息
    public int delUser(String userid);

    //设置vip
    public int updateUserpower(String userid);

    //修改头像
    public int uploadface(User User);

}
