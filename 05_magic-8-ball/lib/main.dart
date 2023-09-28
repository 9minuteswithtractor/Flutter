import 'package:flutter/material.dart';
import 'screens/home/activity_shuffle_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO [ ] could implement Theme-color ?
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(74, 78, 105, 1),
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 27.0,
              fontFamily: 'MysteryQuest',
              fontWeight: FontWeight.bold,
            ),
          ), // TODO create a catchy app-title

          centerTitle: true,
          backgroundColor: const Color.fromRGBO(34, 34, 59, 1),
        ),
        body: const ActivityShufflePage(),
      ),
    );
  }
}
