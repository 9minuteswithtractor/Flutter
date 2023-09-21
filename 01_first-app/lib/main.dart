import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(169, 77, 55, 1),
        appBar: AppBar(
            title: Text('flutter is awesome'.toUpperCase()),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(212, 97, 69, 1)),
        body: const Center(
          child: Image(
            height: 200,
            width: 200,
            image: NetworkImage(
                'https://static-00.iconduck.com/assets.00/flutter-plain-'
                'icon-827x1024-okfp25wt.png'),
          ),
        ),
      ),
    ),
  );
}
