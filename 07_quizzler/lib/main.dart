import 'package:flutter/material.dart';
import 'package:quizzler/screens/quizzler_home.dart';

// ====================================================================
//
// Task     : create an interactive and good UI Quiz app
//
// ToDo     : [x] Think about structure and logical flow of app
// ToDo     : [x] Where to display Q
// ToDo     : [x] List where to store quiz question
// ToDo     : [x] How to keep score
// ToDo     : [ ] Is there a hint for the answer ?
// ToDo     : [ ] How to reset Quiz
//
// Notes    : I realize that refactoring the code in a way
//              that separates logic, storage, model
//              is unnecessary for this scale of project
//              but this is just a my version where I'm trying to practice
//              the 'good' project structure.
//              Feel free to suggest any changes :)
// WhatNext :
//
// ====================================================================

void main() => runApp(
      const Quizzler(),
    );

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(93, 93, 93, 1),
          title: const Text(
            'Quizzler',
            style: TextStyle(
              fontSize: 29.0,
              fontFamily: 'Pacifico',
            ),
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}
