package com.example.demo.curriculum.teacher.service;

import com.example.demo.curriculum.teacher.domain.Curriculum;
import com.example.demo.domain.ReturnT;

import java.util.List;
import java.util.Map;

/**
* 课程信息
*
* Created by xuxueli on '2020-03-29 12:43:02'.
*/
public interface CurriculumService {

    /**
    * 新增
    */
    public ReturnT<String> insert(Curriculum curriculum);

    /**
    * 删除
    */
    public ReturnT<String> delete(int id);

    /**
    * 更新
    */
    public ReturnT<String> update(Curriculum curriculum);

    /**
    * Load查询
    */
    public Curriculum load(int id);

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize);

    /**
     * 查询所有
     */
    public List<Curriculum> List(Curriculum curriculum);
}
