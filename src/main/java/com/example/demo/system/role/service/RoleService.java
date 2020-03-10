package com.example.demo.system.role.service;

import com.example.demo.system.role.domain.Role;

import java.util.List;

public interface RoleService {
    List<Role> findRoleByUserid(String userid);
    int addRole(Role role);
    int deleRole(String userid);
    int updateRole(Role role);
    List<Role> findAllRole(Role role);
}
