package com.example.demo.system.permission.service.impl;

import com.example.demo.system.permission.dao.PermissionsMapper;
import com.example.demo.system.permission.domain.Permissions;
import com.example.demo.system.permission.service.PermissionsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class PermissionsServiceImpl implements PermissionsService {
    @Autowired
    public PermissionsMapper permissionsMapper;
    @Override
    public List<Permissions> findPermissionsByRolename(String rolename) {
        return permissionsMapper.findPermissionsByRolename(rolename);
    }

    @Override
    public List<Permissions> findAllPermissions(Permissions permissions) {
        return permissionsMapper.findAllPermissions(permissions);
    }

    @Override
    public int addPermissions(Permissions permissions) {
        return permissionsMapper.addPermissions(permissions);
    }

    @Override
    public int delePermissions(String rolename) {
        return permissionsMapper.delePermissions(rolename);
    }

    @Override
    public int updatePermissions(Permissions permissions) {
        return permissionsMapper.updatePermissions(permissions);
    }
}
