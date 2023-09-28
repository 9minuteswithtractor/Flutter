import 'package:flutter/material.dart';
import 'dart:math';

class ActivityShufflePage extends StatefulWidget {
  const ActivityShufflePage({super.key});

  @override
  State<ActivityShufflePage> createState() => _ActivityShufflePageState();
}

class _ActivityShufflePageState extends State<ActivityShufflePage> {
  // onPress()
  // TODO for now the list is hardcoded -> maybe GET request from database?  ...
  List<String> activityArr = ['Yes', 'No', 'Possible'];
  late String text = activityArr.first;
  // conditional rendering:
  late int textLength = text.length;
  double textSize = 30.0;

  void conditionalRender() {
    if (textLength >= 5) {
      // debugPrint('Lengthy answer!');
      // debugPrint('text: $text textLen: $textLength');
      setState(() {
        textSize = 21.0;
      });
    } else {
      setState(() {
        textSize = 30.0;
      });
    }
  }

  void shuffleActivity() {
    randomActivityIndex = Random().nextInt(activityArr.length);
    setState(() {
      text = activityArr[randomActivityIndex];
      textLength = text.length;
    });
  }

  // pre-load-attributes
  int randomActivityIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Expanded(
        child: GestureDetector(
            onTap: () {
              // onTap()
              shuffleActivity();
              conditionalRender();

              // for toggle:
              // setState(() {
              //   isImage1 = !isImage1;
              // });
              // Clear all showing snack bars
              ScaffoldMessenger.of(context).clearSnackBars();
              // Display a snack bar
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  'Hope for the Best!',
                  style: TextStyle(
                    fontFamily: 'MysteryQuest',
                    fontSize: 18.0,
                  ),
                ),
              ));
            },
            // Image.asset('assets/images/$text.png'),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset('assets/images/blank-ball.png'),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Tourney',
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: const Color.fromRGBO(128, 255, 255, 1)),
                ),
              ],
            )
            // toggle: for conditional rendering
            // child: isImage1
            //     ? Image.asset(
            //         'assets/images/activity-$randomActivityIndex.png',
            //         width: 350.0,
            //       )
            //     : Image.asset(
            //         'assets/images/activity-$randomActivityIndex.png',
            //         width: 350.0,
            //       ),
            ),
      ),
    ));
  }
}
