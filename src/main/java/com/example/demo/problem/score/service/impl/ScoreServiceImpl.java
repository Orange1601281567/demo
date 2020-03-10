package com.example.demo.problem.score.service.impl;
import com.example.demo.problem.score.domain.ErrorTest;
import com.example.demo.problem.score.dao.ScoreMapper;
import com.example.demo.problem.score.domain.Score;
import com.example.demo.problem.score.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ScoreServiceImpl implements ScoreService {
    @Autowired
    private ScoreMapper scoreMapper;

    @Override
    public int addScore(Score score) {
        return scoreMapper.addScore(score);
    }

    @Override
    public int editScore(Score score) {
        return scoreMapper.editScore(score);
    }

    @Override
    public List<Score> findScore(Score score) {
        return scoreMapper.findScore(score);
    }

    @Override
    public int addError(ErrorTest error) {
        return scoreMapper.addError(error);
    }

    @Override
    public List<ErrorTest> findError(ErrorTest error) {
        return scoreMapper.findError(error);
    }
}
