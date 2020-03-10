package com.example.demo.system.permission.service;

import com.example.demo.system.permission.domain.Permissions;

import java.util.List;

public interface PermissionsService {
    List<Permissions> findPermissionsByRolename(String rolename);
    List<Permissions> findAllPermissions(Permissions permissions);
    int addPermissions(Permissions permissions);
    int delePermissions(String rolename);
    int updatePermissions(Permissions permissions);
}
