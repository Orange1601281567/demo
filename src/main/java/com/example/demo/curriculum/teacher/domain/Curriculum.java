package com.example.demo.curriculum.teacher.domain;

import java.io.Serializable;
import java.util.Date;

/**
*  课程信息
*
*  Created by xuxueli on '2020-03-29 12:43:02'.
*/
public class Curriculum implements Serializable {
    private static final long serialVersionUID = 42L;

    /**
    * 课程id
    */
    private int id;

    /**
    * 教师id
    */
    private String teacherid;

    /**
    * 科目
    */
    private String subject;

    /**
    * 班级id
    */
    private String classid;

    /**
    * 班级人数
    */
    private String classsize;

    /**
    * 创建时间
    */
    private Date addtime;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String getClasssize() {
        return classsize;
    }

    public void setClasssize(String classsize) {
        this.classsize = classsize;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

}