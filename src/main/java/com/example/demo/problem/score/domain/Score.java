package com.example.demo.problem.score.domain;

public class Score {
    private String userid;
    private String subject;
    private int score;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Score{" +
                "userid='" + userid + '\'' +
                ", subject='" + subject + '\'' +
                ", score=" + score +
                '}';
    }
}
