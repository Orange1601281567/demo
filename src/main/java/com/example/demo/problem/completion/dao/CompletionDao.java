package com.example.demo.problem.completion.dao;

import com.example.demo.problem.completion.domain.Completion;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
* 填空题信息
*
* Created by xuxueli on '2020-03-23 14:31:17'.
*/
@Component
public interface CompletionDao {

    /**
    * 新增
    */
    public int insert(@Param("completion") Completion completion);

    /**
    * 删除
    */
    public int delete(@Param("id") int id);

    /**
    * 更新
    */
    public int update(@Param("completion") Completion completion);

    /**
    * Load查询
    */
    public Completion load(@Param("id") int id);

    /**
    * 分页查询Data
    */
	public List<Completion> pageList(@Param("offset") int offset,
                                     @Param("pagesize") int pagesize);

    /**
     * 查询所有
     */
    public List<Completion> List(Completion completion);


    /**
    * 分页查询Count
    */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize);

}
