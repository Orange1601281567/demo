package com.example.demo.curriculum.grades.controller;

import com.example.demo.curriculum.grades.domain.Grades;
import com.example.demo.curriculum.grades.service.GradesService;
import com.example.demo.domain.ReturnT;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 班级信息
*
* Created by xuxueli on '2020-03-29 13:34:18'.
*/
@Controller
@RequestMapping("/Grades")
public class GradesController {

    @Resource
    private GradesService gradesService;

    private String prefix = "Grades";
    @GetMapping(value = "/list")
    public String list() {
        return prefix+"/list";
    }

    @GetMapping(value = "/add")
    public String add() {
        return prefix+"/add";
    }

    @GetMapping(value = "/edit" )
    public String edit(int id , ModelMap testmeg) {
        Grades test=(Grades)gradesService.load(id);
        testmeg.put("test",test);
        return prefix+"/edit";
    }


    /**
    * 新增
    */
    @RequestMapping("/insert")
    @ResponseBody
    public ReturnT<String> insert(Grades grades){
        return gradesService.insert(grades);
    }

    /**
    * 删除
    */
    @RequestMapping("/delete")
    @ResponseBody
    public ReturnT<String> delete(int id){
        return gradesService.delete(id);
    }

    /**
    * 更新
    */
    @RequestMapping("/update")
    @ResponseBody
    public ReturnT<String> update(Grades grades){
        return gradesService.update(grades);
    }

    /**
    * Load查询
    */
    @RequestMapping("/load")
    @ResponseBody
    public Grades load(int id){
        return gradesService.load(id);
    }

    /**
    * 分页查询
    */
    @RequestMapping("/pageList")
    @ResponseBody
    public Map<String, Object> pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
        return gradesService.pageList(offset, pagesize);
    }

    /**
     * 分页查询
     */
    @RequestMapping("/List")
    @ResponseBody
    public HashMap<String,Object> List(int limit, int page, String classid) {

        Page pages= PageHelper.startPage(page,limit);
        Grades grades=new Grades();
        grades.setClassid(classid);
        List<Grades> a=(List<Grades>)gradesService.List(grades);
        //得到分页的结果对象
        PageInfo<Grades> personPageInfo = new PageInfo<>(a);
        personPageInfo.setTotal(pages.getTotal());
        //得到分页中的person条目对象
        List<Grades> pageList = personPageInfo.getList();
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("msg", "");
        result.put("count",personPageInfo.getTotal());
        result.put("code", 0);
        result.put("data", pageList);
        return result;
    }

}
