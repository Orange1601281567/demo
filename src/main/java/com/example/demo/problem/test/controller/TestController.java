package com.example.demo.problem.test.controller;

import com.example.demo.problem.test.domain.Test;
import com.example.demo.problem.test.service.TestService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/Test")
@RequiresRoles("teacher")
public class TestController {
    @Autowired
    private TestService testService;
    private String prefix = "Test";

    @GetMapping(value = "/list")
    public String list() {
        return prefix+"/list";
    }

    @GetMapping(value = "/add")
    public String add() {
        return prefix+"/add";
    }

    @GetMapping(value = "/edit")
    public String edit(int id, ModelMap testmeg) {
        Test test=(Test)testService.findTestById(id).get(0);
        testmeg.put("test",test);
        return prefix+"/edit";
    }

    @PostMapping( "/del")
    @RequiresRoles("admin")
    @ResponseBody
    public int delTest(int id) {
        return testService.delTest(id);
    }

    @PostMapping( "/editTest")
    @ResponseBody
    public int editTest(int id,String type, String subject,String stem,String option1,String option2,String option3,String option4,String answer) {
        Test a = new Test();
        a.setId(id);
        a.setType(type);
        a.setSubject(subject);
        a.setStem(stem);
        a.setOption1(option1);
        a.setOption2(option2);
        a.setOption3(option3);
        a.setOption4(option4);
        a.setAnswer(answer);
        return testService.editTest(a);

    }

    @PostMapping( "/addTest")
    @ResponseBody
    public int addTest(String type, String subject,String stem,String option1,String option2,String option3,String option4,String answer) {
        Test a = new Test();
        a.setType(type);
        a.setSubject(subject);
        a.setStem(stem);
        a.setOption1(option1);
        a.setOption2(option2);
        a.setOption3(option3);
        a.setOption4(option4);
        a.setAnswer(answer);
        return testService.addTest(a);
    }

    @PostMapping( "/findAllTest")
    @ResponseBody
    public HashMap<String,Object> findAllTest(int limit, int page, String subject,String stem) {

        Page pages= PageHelper.startPage(page,limit);
        Test test=new Test();
        test.setStem(stem);
        test.setSubject(subject);
        List<Test> a=(List<Test>)testService.findAllTest(test);
        //得到分页的结果对象
        PageInfo<Test> personPageInfo = new PageInfo<>(a);
        personPageInfo.setTotal(pages.getTotal());
        //得到分页中的person条目对象
        List<Test> pageList = personPageInfo.getList();
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count",personPageInfo.getTotal());
        result.put("data", pageList);
        return result;
    }

    @PostMapping( "/findAllTest2")
    @ResponseBody
    public List<Test> findAllTest2( String subject) {
        Test test=new Test();
        test.setSubject(subject);
        List<Test> a=testService.findAllTest(test);
        return a;
    }

    @PostMapping( "/question")
    @ResponseBody
    public List<Test> question(String subject){
        return testService.Test(subject);
    }

}
