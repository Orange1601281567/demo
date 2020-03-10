package com.example.demo.problem.score.controller;

import com.example.demo.problem.score.domain.ErrorTest;
import com.example.demo.problem.score.domain.Score;
import com.example.demo.problem.score.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/Score")
public class ScoreContrroller {
    @Autowired
    private ScoreService scoreService;
    @PostMapping( "/addScore")
    @ResponseBody
    public int addScore(String userid,Integer score,String subject){
        Score scores=new Score();
        scores.setUserid(userid);
        scores.setScore(score);
        scores.setSubject(subject);
        return scoreService.addScore(scores);
    }
    @PostMapping( "/editScore")
    @ResponseBody
    public int editScore(Score score){
        return scoreService.editScore(score);
    }

    @PostMapping( "/findScore")
    @ResponseBody
    public List<Score> findScore(Score score){
        return scoreService.findScore(score);
    }

    @PostMapping( "/addError")
    @ResponseBody
    public int addError(ErrorTest error){
        return scoreService.addError(error);

    }

    @PostMapping( "/findError")
    @ResponseBody
    public List<ErrorTest> findError(ErrorTest error){
        return scoreService.findError(error);
    }



}
