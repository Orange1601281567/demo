package com.example.demo.system.role.controller;


import com.example.demo.system.role.domain.Role;
import com.example.demo.system.role.service.RoleService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/Role")
@RequiresRoles("admin")
public class RoleController {
    @Autowired
    private RoleService roleService;
    private String prefix = "Role";

    @GetMapping(value = "/list")
    @RequiresRoles("admin")
    public String list() {
        return prefix+"/list";
    }

    @GetMapping(value = "/add")
    @RequiresRoles("admin")
    public String add() {
        return prefix+"/add";
    }

    @GetMapping(value = "/edit")
    @RequiresRoles("admin")
    public String edit(String userid, ModelMap usermeg) {
        Role role=(Role)roleService.findRoleByUserid(userid).get(0);
        usermeg.put("role",role);
        return prefix+"/edit";
    }

    @PostMapping( "/del")
    @RequiresRoles("admin")
    @ResponseBody
    public int delRole(String userid) {
        return roleService.deleRole(userid);
    }


    @PostMapping( "/editRole")
    @ResponseBody
    public int editRole(String userid, String rolename) {
        Role a = new Role();
        a.setUserid(userid);
        a.setRolename(rolename);
        return roleService.updateRole(a);
    }



    @PostMapping( "/addRole")
    @ResponseBody
    public int addRole(String userid, String rolename) {
        Role a = new Role();
        a.setUserid(userid);
        a.setRolename(rolename);
        return roleService.addRole(a);
    }


    @PostMapping( "/findAllRole")
    @RequiresRoles("admin")
    @ResponseBody
    public HashMap<String,Object> findAllRole(int limit, int page, String userid) {

        Page pages= PageHelper.startPage(page,limit);
        Role role=new Role();
        role.setUserid(userid);
        List<Role> a=(List<Role>)roleService.findAllRole(role);
        List<Role> listRole=new ArrayList<Role>();
        for(Role roles : a) {
            if(!roles.getUserid().equals("asd"))
            listRole.add(roles);
        }
        //得到分页的结果对象
        PageInfo<Role> personPageInfo = new PageInfo<>(listRole);
        personPageInfo.setTotal(pages.getTotal());
        //得到分页中的person条目对象
        List<Role> pageList = personPageInfo.getList();
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count",personPageInfo.getTotal()-2);
        result.put("data", pageList);
        return result;
    }

}
