package com.example.demo.curriculum.teacher.controller;

import com.example.demo.curriculum.teacher.domain.Curriculum;
import com.example.demo.curriculum.teacher.service.CurriculumService;
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
* 课程信息
*
* Created by xuxueli on '2020-03-29 12:43:02'.
*/
@Controller
@RequestMapping("/Curriculum")
public class CurriculumController {

    @Resource
    private CurriculumService curriculumService;

    private String prefix = "Curriculum";
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
        Curriculum test=(Curriculum)curriculumService.load(id);
        testmeg.put("test",test);
        return prefix+"/edit";
    }

    /**
    * 新增
    */
    @RequestMapping("/insert")
    @ResponseBody
    public ReturnT<String> insert(Curriculum curriculum){
        return curriculumService.insert(curriculum);
    }

    /**
    * 删除
    */
    @RequestMapping("/delete")
    @ResponseBody
    public ReturnT<String> delete(int id){
        return curriculumService.delete(id);
    }

    /**
    * 更新
    */
    @RequestMapping("/update")
    @ResponseBody
    public ReturnT<String> update(Curriculum curriculum){
        return curriculumService.update(curriculum);
    }

    /**
    * Load查询
    */
    @RequestMapping("/load")
    @ResponseBody
    public Curriculum load(int id){
        return curriculumService.load(id);
    }

    /**
    * 分页查询
    */
    @RequestMapping("/pageList")
    @ResponseBody
    public Map<String, Object> pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
        return curriculumService.pageList(offset, pagesize);
    }

    /**
     * 分页查询
     */
    @RequestMapping("/List")
    @ResponseBody
    public HashMap<String,Object> List(int limit, int page, String subject,String teacherid) {

        Page pages= PageHelper.startPage(page,limit);
        Curriculum curriculum=new Curriculum();
        curriculum.setSubject(subject);
        curriculum.setTeacherid(teacherid);
        List<Curriculum> a=(List<Curriculum>)curriculumService.List(curriculum);
        //得到分页的结果对象
        PageInfo<Curriculum> personPageInfo = new PageInfo<>(a);
        personPageInfo.setTotal(pages.getTotal());
        //得到分页中的person条目对象
        List<Curriculum> pageList = personPageInfo.getList();
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("msg", "");
        result.put("count",personPageInfo.getTotal());
        result.put("code", 0);
        result.put("data", pageList);
        return result;
    }

}
