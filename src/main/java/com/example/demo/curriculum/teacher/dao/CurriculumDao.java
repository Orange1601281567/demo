package com.example.demo.curriculum.teacher.dao;

import com.example.demo.curriculum.teacher.domain.Curriculum;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
* 课程信息
*
* Created by xuxueli on '2020-03-29 12:43:02'.
*/
@Component
public interface CurriculumDao {

    /**
    * 新增
    */
    public int insert(@Param("curriculum") Curriculum curriculum);

    /**
    * 删除
    */
    public int delete(@Param("id") int id);

    /**
    * 更新
    */
    public int update(@Param("curriculum") Curriculum curriculum);

    /**
    * Load查询
    */
    public Curriculum load(@Param("id") int id);

    /**
    * 分页查询Data
    */
	public List<Curriculum> pageList(@Param("offset") int offset,
                                     @Param("pagesize") int pagesize);

    /**
    * 分页查询Count
    */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize);

    /**
     * 查询所有
     */
    public List<Curriculum> List(Curriculum curriculum);
}
