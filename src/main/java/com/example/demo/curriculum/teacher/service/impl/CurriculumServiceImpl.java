package com.example.demo.curriculum.teacher.service.impl;

import com.example.demo.curriculum.teacher.dao.CurriculumDao;
import com.example.demo.curriculum.teacher.domain.Curriculum;
import com.example.demo.curriculum.teacher.service.CurriculumService;
import com.example.demo.domain.ReturnT;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 课程信息
*
* Created by xuxueli on '2020-03-29 12:43:02'.
*/
@Service
public class CurriculumServiceImpl implements CurriculumService {

	@Resource
	private CurriculumDao curriculumDao;

	/**
    * 新增
    */
	@Override
	public ReturnT<String> insert(Curriculum curriculum) {

		// valid
		if (curriculum == null) {
			return new ReturnT<String>(ReturnT.FAIL_CODE, "必要参数缺失");
        }

		curriculumDao.insert(curriculum);
        return ReturnT.SUCCESS;
	}

	/**
	* 删除
	*/
	@Override
	public ReturnT<String> delete(int id) {
		int ret = curriculumDao.delete(id);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* 更新
	*/
	@Override
	public ReturnT<String> update(Curriculum curriculum) {
		int ret = curriculumDao.update(curriculum);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* Load查询
	*/
	@Override
	public Curriculum load(int id) {
		return curriculumDao.load(id);
	}

	/**
	* 分页查询
	*/
	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {

		List<Curriculum> pageList = curriculumDao.pageList(offset, pagesize);
		int totalCount = curriculumDao.pageListCount(offset, pagesize);

		// result
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return result;
	}

	@Override
	public List<Curriculum> List(Curriculum curriculum) {
		return curriculumDao.List(curriculum);
	}

}
