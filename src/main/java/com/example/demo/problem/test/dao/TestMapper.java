package com.example.demo.problem.test.dao;

import com.example.demo.problem.test.domain.Test;

import java.util.List;

public interface TestMapper {
    List<Test> findTestById(int id);
    List<Test> findAllTest(Test test);
    List<Test> Test(String subject);
    int addTest(Test test);
    int editTest(Test test);
    int delTest(int id);
}
