package com.example.demo.Menu.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import com.example.demo.domain.ReturnT;
import com.example.demo.Menu.domain.Menu;

import java.util.List;

/**
* 菜单信息
*
* Created by xuxueli on '2020-05-08 13:45:06'.
*/
@Component
public interface MenuDao {

    /**
    * 新增
    */
    public int insert(@Param("menu") Menu menu);

    /**
    * 删除
    */
    public int delete(@Param("id") int id);

    /**
    * 更新
    */
    public int update(@Param("menu") Menu menu);

    /**
    * Load查询
    */
    public Menu load(@Param("id") int id);

    /**
    * 分页查询Data
    */
	public List<Menu> pageList(@Param("offset") int offset,
                                                 @Param("pagesize") int pagesize);

    /**
    * 分页查询Count
    */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize);

    /**
    * 查询所有
    */
    public List<Menu> List(@Param("role") int role);
}
