package com.example.demo.system.users.service.impl;

import com.example.demo.system.users.dao.UserMapper;
import com.example.demo.domain.OrangeReturn;
import com.example.demo.system.users.domain.User;
import com.example.demo.system.users.service.UserService;
import com.example.demo.utils.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    private OrangeReturn checkCondition() {
        OrangeReturn back = new OrangeReturn();
        if (userMapper == null) {
            back.setCode("0");
            back.setMessage("数据访问层对象或数据模型都不能为空！");
            back.setObj(null);
        } else {
            back.setCode("1");
            back.setMessage("数据访问层对象和数据模型满足操作要求！");
            back.setObj(1);
        }
        return back;
    }

    @Override
    public OrangeReturn addUser(User User) {
        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        String reg = "[\\w]+@[\\w]+.[\\w]+[\\w]";
        if (!User.getEmail().matches(reg)) {
            back.setCode("0");
            back.setMessage("邮箱格式错误");
            return back;
        }
        if (User.getPhone().length() != 11) {
            back.setCode("0");
            back.setMessage("电话格式错误");
            return back;
        }
        try {
            int result = userMapper.addUser(User);
            if (result <= 0) {
                back.setCode("0");
                back.setMessage("用户名已存在");
            } else {
                back.setCode("1");
                back.setMessage("注册成功");
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("注册失败,注册信息不能为空!");
            back.setObj(-1);
        }
        return back;
    }

    @Override
    public OrangeReturn Checkin(User User) {

        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        try {
            User result = userMapper.Checkin(User);
            if (result == null) {
                back.setCode("0");
                back.setMessage("登录失败,用户名或密码错误");
            } else {
                back.setCode("1");
                back.setMessage("登录成功！");
                back.setObj(result);
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("数据保存出现异常，异常信息：" + e.getMessage());
            back.setObj(-1);
        }
        return back;
    }

    @Override
    public OrangeReturn delUser(String userid) {
        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        try {
            int result = userMapper.delUser(userid);
            if (result <= 0) {
                back.setCode("0");
                back.setMessage("抱歉，删除失败！");
            } else {
                back.setCode("1");
                back.setMessage("删除成功！");
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("抱歉，删除出现异常！");
            back.setObj(-1);
        }
        return back;
    }

    @Override
    public OrangeReturn updateUserpower(String userid) {
        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        try {
            int result = userMapper.updateUserpower(userid);
            if (result <= 0) {
                back.setCode("0");
                back.setMessage("抱歉，更新失败！");
            } else {
                back.setCode("1");
                back.setMessage("更新成功！");
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("抱歉，更新失败！");
            back.setObj(-1);
        }
        return back;
    }

    @Override
    public OrangeReturn uploadface(User user) {
        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        try {
            int result = userMapper.uploadface(user);
            if (result <= 0) {
                back.setCode("0");
                back.setMessage("抱歉，更新失败！");
            } else {
                back.setCode("1");
                back.setMessage("更新成功！");
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("抱歉，更新失败！");
            back.setObj(-1);
        }
        return back;
    }

    @Override
    public OrangeReturn findUserByID(String userid) {
        OrangeReturn back = new OrangeReturn();
        try {
            User temp = userMapper.findUserByID(userid);
            //转换查询结果
            back.setObj(temp);
        } catch (Exception e) {
            back.setCode("-1");
            back.setMessage("系统处理查询的过程中出现异常，异常信息：" + e.getMessage());
            back.setObj(null);
            e.printStackTrace();
        }
        return back;
    }

    @Override
    public OrangeReturn findAllUser(String userid) {
        OrangeReturn back = new OrangeReturn();
        try {
            List<User> temp = userMapper.findAllUser(userid);
            //转换查询结果
            back = getFindResult(temp);
        } catch (Exception e) {
            back.setCode("-1");
            back.setMessage("系统处理查询的过程中出现异常，异常信息：" + e.getMessage());
            back.setObj(null);
            e.printStackTrace();
        }
        return back;
    }

    @Override
    public OrangeReturn updateUserImfomation(User User) {
        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        String reg = "[\\w]+@[\\w]+.[\\w]+[\\w]";
        if (!User.getEmail().matches(reg)&&User.getEmail()!=null&&User.getEmail()!="") {
            back.setCode("0");
            back.setMessage("邮箱格式错误");
            return back;
        }
        if (User.getPhone().length() != 11&&User.getPhone()!=null&&User.getPhone()!="") {
            back.setCode("0");
            back.setMessage("电话格式错误");
            return back;
        }
        try {
            int result = userMapper.updateUserImfomation(User);
            if (result <= 0) {
                back.setCode("0");
                back.setMessage("更新失败");
            } else {
                back.setCode("1");
                back.setMessage("更新成功");
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("更新出现异常！");
            back.setObj(-1);
        }
        return back;
    }

    @Override
    public OrangeReturn updateUserpwd(String userid,String oldPwd,String newPwd) {

        OrangeReturn back = checkCondition();
        if (back.getObj() == null) return back;
        oldPwd=Md5Utils.hash(userid + oldPwd);
        newPwd=Md5Utils.hash(userid + newPwd);
        try {
            int result = userMapper.updateUserpwd(userid,oldPwd,newPwd);
            if (result <= 0) {
                back.setCode("0");
                back.setMessage("旧密码错误！");
            } else {
                back.setCode("1");
                back.setMessage("密码修改成功！");
            }
            back.setObj(result);
        } catch (Exception e) {
            e.printStackTrace();
            back.setCode("-1");
            back.setMessage("数据保存出现异常，异常信息：" + e.getMessage());
            back.setObj(-1);
        }
        return back;
    }

    /*检测查询的条件*/
    private OrangeReturn checkFindCondition(Map condition) {
        OrangeReturn back = new OrangeReturn();
        if (userMapper == null || condition == null) {
            back.setCode("0");
            back.setMessage("数据访问层对象或查找都不能为空！");
            back.setObj(null);
        } else {
            back.setCode("1");
            back.setMessage("数据访问层对象和查找条件满足操作要求！");
            back.setObj(1);
        }
        return back;
    }

    /*判断查询条件param是否有效，返回KesunReturn结果*/
    private OrangeReturn getFindResult(List param) {
        OrangeReturn back = new OrangeReturn();
        if (param == null || param.size() == 0) {
            back.setCode("0");
            back.setMessage("抱歉，系统没有查询到符合条件的数据！");
        } else {
            back.setCode("1");
            back.setMessage("系统已经查询到符合条件的数据！");
        }
        back.setObj(param);
        return back;
    }


}
