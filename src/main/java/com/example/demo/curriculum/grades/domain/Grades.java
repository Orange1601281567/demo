package com.example.demo.curriculum.grades.domain;

import java.io.Serializable;
import java.util.Date;

/**
*  班级信息
*
*  Created by xuxueli on '2020-03-29 13:34:18'.
*/
public class Grades implements Serializable {
    private static final long serialVersionUID = 42L;

    /**
    * id
    */
    private int id;

    /**
    * 班级id
    */
    private String classid;

    /**
    * 学生id
    */
    private String studentid;

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

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

}