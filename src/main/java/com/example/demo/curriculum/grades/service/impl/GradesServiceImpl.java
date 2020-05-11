package com.example.demo.curriculum.grades.service.impl;

import com.example.demo.curriculum.grades.dao.GradesDao;
import com.example.demo.curriculum.grades.domain.Grades;
import com.example.demo.curriculum.grades.service.GradesService;
import com.example.demo.domain.ReturnT;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 班级信息
*
* Created by xuxueli on '2020-03-29 13:34:18'.
*/
@Service
public class GradesServiceImpl implements GradesService {

	@Resource
	private GradesDao gradesDao;

	/**
    * 新增
    */
	@Override
	public ReturnT<String> insert(Grades grades) {

		// valid
		if (grades == null) {
			return new ReturnT<String>(ReturnT.FAIL_CODE, "必要参数缺失");
        }

		gradesDao.insert(grades);
        return ReturnT.SUCCESS;
	}

	/**
	* 删除
	*/
	@Override
	public ReturnT<String> delete(int id) {
		int ret = gradesDao.delete(id);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* 更新
	*/
	@Override
	public ReturnT<String> update(Grades grades) {
		int ret = gradesDao.update(grades);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* Load查询
	*/
	@Override
	public Grades load(int id) {
		return gradesDao.load(id);
	}

	/**
	* 分页查询
	*/
	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {

		List<Grades> pageList = gradesDao.pageList(offset, pagesize);
		int totalCount = gradesDao.pageListCount(offset, pagesize);

		// result
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return result;
	}

	@Override
	public List<Grades> List(Grades grades) {
		return gradesDao.List(grades);
	}

}
