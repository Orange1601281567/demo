package com.example.demo.curriculum.grades.service;

import com.example.demo.curriculum.grades.domain.Grades;
import com.example.demo.domain.ReturnT;

import java.util.List;
import java.util.Map;

/**
* 班级信息
*
* Created by xuxueli on '2020-03-29 13:34:18'.
*/
public interface GradesService {

    /**
    * 新增
    */
    public ReturnT<String> insert(Grades grades);

    /**
    * 删除
    */
    public ReturnT<String> delete(int id);

    /**
    * 更新
    */
    public ReturnT<String> update(Grades grades);

    /**
    * Load查询
    */
    public Grades load(int id);

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize);

    /**
     * 查询所有
     */
    public List<Grades> List(Grades grades);

}
