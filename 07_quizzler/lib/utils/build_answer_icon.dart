import 'package:flutter/material.dart';

export 'package:quizzler/utils/build_answer_icon.dart';

Icon answerCorrect() => const Icon(
      Icons.check,
      color: Colors.green,
    );
Icon answerWrong() => const Icon(
      Icons.close,
      color: Colors.red,
    );
