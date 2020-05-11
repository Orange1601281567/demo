package com.example.demo.problem.completion.service;

import com.example.demo.domain.ReturnT;
import com.example.demo.problem.completion.domain.Completion;

import java.util.List;
import java.util.Map;

/**
* 填空题信息
*
* Created by xuxueli on '2020-03-23 14:31:17'.
*/
public interface CompletionService {

    /**
    * 新增
    */
    public ReturnT<String> insert(Completion completion);

    /**
    * 删除
    */
    public ReturnT<String> delete(int id);

    /**
    * 更新
    */
    public ReturnT<String> update(Completion completion);

    /**
    * Load查询
    */
    public Completion load(int id);

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize);

    /**
     * 查询所有
     */
    public List<Completion> List(Completion completion);

}
