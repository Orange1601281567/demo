package com.example.demo.Menu.service.impl;

import org.springframework.stereotype.Service;
import com.example.demo.domain.ReturnT;
import com.example.demo.Menu.service.MenuService;
import com.example.demo.Menu.dao.MenuDao;
import com.example.demo.Menu.domain.Menu;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 菜单信息
*
* Created by xuxueli on '2020-05-08 13:45:06'.
*/
@Service
public class MenuServiceImpl implements MenuService {

	@Resource
	private MenuDao menuDao;

	/**
    * 新增
    */
	@Override
	public ReturnT<String> insert(Menu menu) {

		// valid
		if (menu == null) {
			return new ReturnT<String>(ReturnT.FAIL_CODE, "必要参数缺失");
        }

		menuDao.insert(menu);
        return ReturnT.SUCCESS;
	}

	/**
	* 删除
	*/
	@Override
	public ReturnT<String> delete(int id) {
		int ret = menuDao.delete(id);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* 更新
	*/
	@Override
	public ReturnT<String> update(Menu menu) {
		int ret = menuDao.update(menu);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* Load查询
	*/
	@Override
	public Menu load(int id) {
		return menuDao.load(id);
	}

	/**
	* 分页查询
	*/
	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {

		List<Menu> pageList = menuDao.pageList(offset, pagesize);
		int totalCount = menuDao.pageListCount(offset, pagesize);

		// result
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return result;
	}

	/**
	* 查询所有
	*/
	@Override
	public List<Menu> List(int role) {
		return  menuDao.List(role);
		}

}
