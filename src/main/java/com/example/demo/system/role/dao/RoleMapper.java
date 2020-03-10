package com.example.demo.system.role.dao;

import com.example.demo.system.role.domain.Role;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


public interface RoleMapper {
    List<Role> findRoleByUserid(String userid);
    int addRole(Role role);
    int deleRole(String userid);
    int updateRole(Role role);
    List<Role> findAllRole(Role role);
}
