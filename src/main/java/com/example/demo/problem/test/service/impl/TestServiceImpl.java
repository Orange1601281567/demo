package com.example.demo.problem.test.service.impl;

import com.example.demo.problem.test.dao.TestMapper;
import com.example.demo.problem.test.domain.Test;
import com.example.demo.problem.test.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestMapper testMapper;



    @Override
    public List<Test> findTestById(int id) {
        return testMapper.findTestById(id);
    }

    @Override
    public List<Test> Test(String subject) {
        return testMapper.Test(subject);
    }

    @Override
    public List<Test> findAllTest(Test test) {
        return testMapper.findAllTest(test);
    }

    @Override
    public int addTest(Test test) {
        return testMapper.addTest(test);
    }

    @Override
    public int editTest(Test test) {
        return testMapper.editTest(test);
    }

    @Override
    public int delTest(int id) {
        return testMapper.delTest(id);
    }
}
