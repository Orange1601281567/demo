package com.example.demo.curriculum.grades.dao;

import com.example.demo.curriculum.grades.domain.Grades;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
* 班级信息
*
* Created by xuxueli on '2020-03-29 13:34:18'.
*/
@Component
public interface GradesDao {

    /**
    * 新增
    */
    public int insert(@Param("grades") Grades grades);

    /**
    * 删除
    */
    public int delete(@Param("id") int id);

    /**
    * 更新
    */
    public int update(@Param("grades") Grades grades);

    /**
    * Load查询
    */
    public Grades load(@Param("id") int id);

    /**
    * 分页查询Data
    */
	public List<Grades> pageList(@Param("offset") int offset,
                                 @Param("pagesize") int pagesize);

    /**
     * 查询所有
     */
    public List<Grades> List(Grades grades);

    /**
    * 分页查询Count
    */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize);

}
