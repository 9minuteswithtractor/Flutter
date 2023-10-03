import 'package:flutter/material.dart';
import 'package:quizzler/storage/score_keeping_list.dart';
import 'package:quizzler/utils/validate_display_question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  void quizWrapUp(context) {
    Alert(
      context: context,
      title: 'How did it go ? 😀',
      desc: 'Your score: $quizScore',
      buttons: [
        DialogButton(
          child: const Text(
            'Restart Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            // reset Quizzler
            setState(() {
              currentQuestionListIndex = 0;
              scoreKeeper = [];
              quizScore = 0;
              Navigator.pop(context);
            });
          },
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: displayText(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    validateAnswer(true);
                  });
                  if (currentQuestionListIndex == lastQuestionIndex + 1) {
                    quizWrapUp(context);
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    validateAnswer(false);
                  });

                  if (currentQuestionListIndex == lastQuestionIndex + 1) {
                    quizWrapUp(context);
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
            child: Row(
              children: scoreKeeper,
            ),
          )
        ],
      ),
    );
  }
}
