package com.example.demo.problem.score.service;

import com.example.demo.problem.score.domain.Score;
import com.example.demo.problem.score.domain.ErrorTest;
import java.util.List;

public interface ScoreService {
    int addScore(Score score);
    int editScore(Score score);
    List<Score> findScore(Score score);
    int addError (ErrorTest error);
    List<ErrorTest> findError(ErrorTest error);
}
