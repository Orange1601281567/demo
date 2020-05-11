package com.example.demo.problem.completion.domain;

import java.io.Serializable;
import java.util.Date;

/**
*  填空题信息
*
*  Created by xuxueli on '2020-03-23 14:31:17'.
*/
public class Completion implements Serializable {
    private static final long serialVersionUID = 42L;

    /**
    * 题目ID
    */
    private int id;

    /**
    * 题目类型
    */
    private String type;

    /**
    * 科目
    */
    private String subject;

    /**
    * 填空题题干
    */
    private String stem;

    /**
    * 填空题答案
    */
    private String answer;

    /**
    * 时间
    */
    private Date createtime;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStem() {
        return stem;
    }

    public void setStem(String stem) {
        this.stem = stem;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

}