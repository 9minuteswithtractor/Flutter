import 'package:flutter/material.dart';
import 'package:quizzler/storage/score_keeping_list.dart';
import 'package:quizzler/utils/validate_display_question.dart';

export 'package:quizzler/screens/quizzler_home.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
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
