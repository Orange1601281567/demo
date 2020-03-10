package com.example.demo.system.role.service.impl;


import com.example.demo.system.role.dao.RoleMapper;
import com.example.demo.system.role.domain.Role;
import com.example.demo.system.role.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    public RoleMapper roleMapper;
    @Override
    public List<Role> findRoleByUserid(String userid) {
        return roleMapper.findRoleByUserid(userid);
    }

    @Override
    public int addRole(Role role) {

        return roleMapper.addRole(role);
    }

    @Override
    public int deleRole(String userid) {
        return roleMapper.deleRole(userid);
    }

    @Override
    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }

    @Override
    public List<Role> findAllRole(Role role) {
        return roleMapper.findAllRole(role);
    }
}
