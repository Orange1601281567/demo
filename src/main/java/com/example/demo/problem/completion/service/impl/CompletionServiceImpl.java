package com.example.demo.problem.completion.service.impl;

import com.example.demo.domain.ReturnT;
import com.example.demo.problem.completion.dao.CompletionDao;
import com.example.demo.problem.completion.domain.Completion;
import com.example.demo.problem.completion.service.CompletionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 填空题信息
*
* Created by xuxueli on '2020-03-23 14:31:17'.
*/
@Service
public class CompletionServiceImpl implements CompletionService {

	@Resource
	private CompletionDao completionDao;

	/**
    * 新增
    */
	@Override
	public ReturnT<String> insert(Completion completion) {

		// valid
		if (completion == null) {
			return new ReturnT<String>(ReturnT.FAIL_CODE, "必要参数缺失");
        }

		completionDao.insert(completion);
        return ReturnT.SUCCESS;
	}

	/**
	* 删除
	*/
	@Override
	public ReturnT<String> delete(int id) {
		int ret = completionDao.delete(id);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* 更新
	*/
	@Override
	public ReturnT<String> update(Completion completion) {
		int ret = completionDao.update(completion);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* Load查询
	*/
	@Override
	public Completion load(int id) {
		return completionDao.load(id);
	}

	/**
	* 分页查询
	*/
	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {

		List<Completion> pageList = completionDao.pageList(offset, pagesize);
		int totalCount = completionDao.pageListCount(offset, pagesize);

		// result
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return result;
	}

	@Override
	public List<Completion> List(Completion completion) {
		return completionDao.List(completion);
	}

}
