import 'package:flutter/material.dart';
// keep track of correct and wrong answers
import 'package:quizzler/storage/score_keeping_list.dart';
// helper function to build icons
import 'package:quizzler/utils/build_answer_icon.dart';
/*
  Maybe at the moment little bit unnecessary to keep this list
  as separated file (quiz_questions-dart), but I'm just tying to refactor
  this code and treat it more or less as how I think would larger
  scale applications be treated .
*/
import 'package:quizzler/storage/quiz_questions.dart';

export 'package:quizzler/utils/validate_display_question.dart';

// starting point values:
int quizScore = 0;
int currentQuestionListIndex = 0;

int lastQuestionIndex = quizQuestions.length - 1;

void validateAnswer(bool buttonPressed) {
  try {
    if (currentQuestionListIndex <= lastQuestionIndex) {
      if (quizQuestions[currentQuestionListIndex].answer == buttonPressed) {
        quizScore++;
        scoreKeeper.add(answerCorrect());
        currentQuestionListIndex++;
      } else {
        scoreKeeper.add(answerWrong());
        currentQuestionListIndex++;
      }
    }
  } catch (err) {
    debugPrint('err => $err');
  }
}

Text displayText() {
  try {
    if (currentQuestionListIndex <= lastQuestionIndex) {
      return (Text(
        quizQuestions[currentQuestionListIndex].question,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
      ));
    } else if (currentQuestionListIndex == lastQuestionIndex + 1) {
      return (Text(
        'Score: $quizScore',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ));
    }
  } catch (err) {
    return const Text(
      'Something went wrong...',
      style: TextStyle(
        color: Colors.red,
        fontSize: 25.0,
      ),
    );
  }
  throw 'Sorry something went wrong\nPlease restart the app ...\n ';
}
