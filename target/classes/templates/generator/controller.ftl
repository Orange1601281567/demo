package com.example.demo.${classInfo.className}.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.*;
import com.example.demo.domain.ReturnT;
import com.example.demo.${classInfo.className}.service.${classInfo.className}Service;
import com.example.demo.${classInfo.className}.domain.${classInfo.className};
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.HashMap;


/**
* ${classInfo.classComment}
*
* Created by xuxueli on '${.now?string('yyyy-MM-dd HH:mm:ss')}'.
*/
@Controller
@RequestMapping("/${classInfo.className}")
public class ${classInfo.className}Controller {

    @Resource
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增
    */
    @PostMapping("/insert")
    @ResponseBody
    public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first});
    }

    /**
    * 删除
    */
    @DeleteMapping("/delete")
    @ResponseBody
    public ReturnT<String> delete(int id){
        return ${classInfo.className?uncap_first}Service.delete(id);
    }

    /**
    * 更新
    */
    @PutMapping("/update")
    @ResponseBody
    public ReturnT<String> update(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
    }

    /**
    * Load查询
    */
    @GetMapping("/load")
    @ResponseBody
    public ${classInfo.className} load(int id){
        return ${classInfo.className?uncap_first}Service.load(id);
    }

    /**
    * 分页查询
    */
    @GetMapping("/pageList")
    @ResponseBody
    public Map<String, Object> pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
        return ${classInfo.className?uncap_first}Service.pageList(offset, pagesize);
    }

    /**
    * 查询所有
    */
    @GetMapping("/list")
    @ResponseBody
    public List<${classInfo.className}> List() {
            return ${classInfo.className?uncap_first}Service.List();
     }

}
