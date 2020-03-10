package com.example.demo.shiro.realm;


import com.example.demo.shiro.token.EasyTypeToken;
import com.example.demo.system.permission.dao.PermissionsMapper;
import com.example.demo.system.role.dao.RoleMapper;
import com.example.demo.system.role.domain.Role;
import com.example.demo.system.users.dao.UserMapper;
import com.example.demo.system.permission.domain.Permissions;
import com.example.demo.system.users.domain.User;
import com.example.demo.utils.Md5Utils;
import com.example.demo.utils.UserRegisteAndLogin;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private PermissionsMapper permissionsMapper;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        User user = (User) principalCollection.getPrimaryPrincipal();
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        List<Role> userRole= roleMapper.findRoleByUserid(user.getUserid());
            for (Role role : userRole) {
                info.addRole(role.getRolename());
                List<Permissions> rolePermissions= permissionsMapper.findPermissionsByRolename(role.getRolename());
                for (Permissions permission : rolePermissions) {
                    info.addStringPermission(permission.getPermission());
                }
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        EasyTypeToken upToken = (EasyTypeToken) authenticationToken;
        String userid=upToken.getUsername();
        String pwd="";
        if(upToken.getPassword()!=null)
        {
             pwd = String.valueOf(upToken.getPassword());
        }
        User user = null;
        try
        {
            user = userMapper.findUserByID(userid);
        }
        catch (Exception e){
            System.out.println("error");
        }
        if(null != user) {
             String[] saltAndCiphertext = UserRegisteAndLogin.encryptPassword(pwd);
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPwd(), ByteSource.Util.bytes(user.getSalt()), getName());
            return info;
        }
        return null;
    }
}
