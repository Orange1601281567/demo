package com.example.demo.problem.completion.controller;

import com.example.demo.domain.ReturnT;
import com.example.demo.problem.completion.domain.Completion;
import com.example.demo.problem.completion.service.CompletionService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 填空题信息
*
* Created by xuxueli on '2020-03-23 14:31:17'.
*/
@Controller
@RequestMapping("/Completion")
public class CompletionController {

    @Resource
    private CompletionService completionService;
    private String prefix = "Completion";

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
        Completion test=(Completion)completionService.load(id);
        testmeg.put("test",test);
        return prefix+"/edit";
    }


    /**
    * 新增
    */
    @PutMapping("/insert")
    @ResponseBody
    public ReturnT<String> insert(String subject,String stem,String answer){
        Completion completion=new Completion();
        completion.setSubject(subject);
        completion.setStem(stem);
        completion.setAnswer(answer);
        return completionService.insert(completion);
    }

    /**
    * 删除
    */
    @DeleteMapping("/delete")
    @ResponseBody
    public ReturnT<String> delete(int id){
        return completionService.delete(id);
    }

    /**
    * 更新
    */
    @PutMapping("/update")
    @ResponseBody
    public ReturnT<String> update(Completion completion){
        return completionService.update(completion);
    }

    /**
    * Load查询
    */
    @PostMapping("/load")
    @ResponseBody
    public Completion load(int id){
        return completionService.load(id);
    }

    /**
    * 分页查询
    */
    @GetMapping("/pageList")
    @ResponseBody
    public Map<String, Object> pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
        return completionService.pageList(offset, pagesize);
    }

    /**
     * 分页查询
     */
    @GetMapping("/List")
    @ResponseBody
    public HashMap<String,Object> List( int limit, int page,String subject,String stem) {

        Page pages= PageHelper.startPage(page,limit);
        Completion completion=new Completion();
        completion.setSubject(subject);
        completion.setStem(stem);
        List<Completion> a=(List<Completion>)completionService.List(completion);
        //得到分页的结果对象
        PageInfo<Completion> personPageInfo = new PageInfo<>(a);
        personPageInfo.setTotal(pages.getTotal());
        //得到分页中的person条目对象
        List<Completion> pageList = personPageInfo.getList();
        //将结果存入map进行传送
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("msg", "");
        result.put("count",personPageInfo.getTotal());
        result.put("code", 0);
        result.put("data", pageList);
        return result;
    }
}
