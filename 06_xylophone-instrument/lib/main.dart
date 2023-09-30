import 'package:flutter/material.dart';
import 'package:xylophone/screens/xylophone_page.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90.0,
          title: const Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 36.0,
              fontFamily: 'MajorMono',
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(13, 27, 30, 1),
        ),
        body: const XylophonePage(),
      ),
    );
  }
}
