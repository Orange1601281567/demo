package com.example.demo.${classInfo.className}.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import com.example.demo.domain.ReturnT;
import com.example.demo.${classInfo.className}.domain.${classInfo.className};

import java.util.List;

/**
* ${classInfo.classComment}
*
* Created by xuxueli on '${.now?string('yyyy-MM-dd HH:mm:ss')}'.
*/
@Component
public interface ${classInfo.className}Dao {

    /**
    * 新增
    */
    public int insert(@Param("${classInfo.className?uncap_first}") ${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    public int delete(@Param("id") int id);

    /**
    * 更新
    */
    public int update(@Param("${classInfo.className?uncap_first}") ${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * Load查询
    */
    public ${classInfo.className} load(@Param("id") int id);

    /**
    * 分页查询Data
    */
	public List<${classInfo.className}> pageList(@Param("offset") int offset,
                                                 @Param("pagesize") int pagesize);

    /**
    * 分页查询Count
    */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize);

    /**
    * 查询所有
    */
    public List<${classInfo.className}> List();
}
