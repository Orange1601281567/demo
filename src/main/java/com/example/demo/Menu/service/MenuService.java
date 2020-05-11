package com.example.demo.Menu.service;
import java.util.Map;
import java.util.List;
import com.example.demo.domain.ReturnT;
import com.example.demo.Menu.domain.Menu;

/**
* 菜单信息
*
* Created by xuxueli on '2020-05-08 13:45:06'.
*/
public interface MenuService {

    /**
    * 新增
    */
    public ReturnT<String> insert(Menu menu);

    /**
    * 删除
    */
    public ReturnT<String> delete(int id);

    /**
    * 更新
    */
    public ReturnT<String> update(Menu menu);

    /**
    * Load查询
    */
    public Menu load(int id);

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize);

    /**
    * 查询所有
    */
    public List<Menu> List(int role);

}
