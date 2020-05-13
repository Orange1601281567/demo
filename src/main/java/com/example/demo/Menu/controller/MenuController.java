package com.example.demo.Menu.controller;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.*;
import com.example.demo.domain.ReturnT;
import com.example.demo.Menu.service.MenuService;
import com.example.demo.Menu.domain.Menu;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;


/**
* 菜单信息
*
* Created by xuxueli on '2020-05-08 13:45:05'.
*/
@Controller
@RequestMapping("/Menu")
public class MenuController {

    @Resource
    private MenuService menuService;

    private String prefix = "Menu";

    @GetMapping(value = "/lists")
    public String list() {
        return prefix+"/lists";
    }

    @GetMapping(value = "/add")
    public String add(int menuid , ModelMap testmeg) {
        Menu menu=new Menu();
        if(menuid==0){
            menu.setId(0);
            menu.setType(0);
        }else{
            menu=menuService.load(menuid);
        }
        testmeg.put("menu",menu);
        return prefix+"/add";
    }

    @GetMapping(value = "/edit")
    public String edit(int id, ModelMap testmeg) {
        Menu menu=menuService.load(id);
        testmeg.put("menu",menu);
        return prefix+"/edit";
    }


    /**
    * 新增
    */
    @PostMapping("/insert")
    @ResponseBody
    public ReturnT<String> insert(Menu menu){
        menu.setId(menuService.List(1).size() + 1);
        return menuService.insert(menu);
    }

    /**
    * 删除
    */
    @DeleteMapping("/delete")
    @ResponseBody
    public ReturnT<String> delete(int id){
        menuService.delete(id);
        List<Menu> list=menuService.List(1);
        for (Menu delChild:list){
            if(delChild.getParentId()==id){
                menuService.delete(delChild.getId());
            }
        }
        return menuService.delete(id);
    }

    /**
    * 更新
    */
    @PutMapping("/update")
    @ResponseBody
    public ReturnT<String> update(Menu menu){
        return menuService.update(menu);
    }

    /**
    * Load查询
    */
    @GetMapping("/load")
    @ResponseBody
    public Menu load(int id){
        return menuService.load(id);
    }

    /**
    * 分页查询
    */
    @GetMapping("/pageList")
    @ResponseBody
    public Map<String, Object> pageList(@RequestParam(required = false, defaultValue = "1") int page,
                                        @RequestParam(required = false, defaultValue = "10") int limit) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count",menuService.pageList((page-1)*10,limit).get("totalCount"));
        result.put("data", menuService.pageList((page-1)*10,limit).get("pageList"));
        return result;
    }

    /**
     * 分页查询
     */
    @GetMapping("/nopageList")
    @ResponseBody
    public Map<String, Object> nopageList() {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count",menuService.List(1).size());
        result.put("data", menuService.List(1));
        return result;
    }

    /**
    * 查询菜单list列表
    */
    @GetMapping("/list")
    @ResponseBody
    public List<Menu> List(int roleid) {

        List<Menu> c=menuService.List(roleid);
        List<Menu> result=new ArrayList<Menu>();
        for(Menu menu:c){
            List<Menu> last=new ArrayList<Menu>();
            for(Menu la:c){
                if(la.getParentId()==menu.getId()){
                    last.add(la);
                }
            }
            menu.setChildren(last);
            if(menu.getParentId()==0){
                result.add(menu);
            }
        }
        return menuService.List(roleid);
     }



    /**
     * 查询菜单树
     */
    @GetMapping("/listTree")
    @ResponseBody
    @RequiresRoles("admin")
    public List<Menu> listTree() {
        List<Menu> c=menuService.List(1);
        List<Menu> result=new ArrayList<Menu>();
        for(Menu menu:c){
            List<Menu> last=new ArrayList<Menu>();
            for(Menu la:c){
                if(la.getParentId()==menu.getId()){
                    last.add(la);
                }
            }
            menu.setChildren(last);
            if(menu.getParentId()==0){
                result.add(menu);
            }
        }
        return result;
    }

}
