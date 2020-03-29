package com.example.demo.problem.choose.dao;

import com.example.demo.problem.choose.domain.Test;

import java.util.List;

public interface TestMapper {
    List<Test> findTestById(int id);
    List<Test> findAllTest(Test test);
    List<Test> Test(String subject);
    int addTest(Test test);
    int editTest(Test test);
    int delTest(int id);
}
