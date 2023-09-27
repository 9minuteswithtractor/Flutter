import 'package:flutter/material.dart';
import 'dart:math';

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
          backgroundColor: const Color.fromRGBO(255, 58, 70, 1),
          centerTitle: true,
          title: const Text(
            'dicee',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontFamily: 'Orbitron',
              letterSpacing: 1.5,
            ),
          ),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = Random().nextInt(6) + 1;
  int dice2 = Random().nextInt(6) + 1;

  void rollDice1() {
    dice1 = Random().nextInt(6) + 1;
  }

  void rollDice2() {
    dice2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 50.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 58, 70, 1),
              Color.fromRGBO(0, 80, 100, 1),
            ]),
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                // flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rollDice1();
                      });

                      // rollDice(),
                    },
                    child: Image.asset('images/dice$dice1.png'),
                  ),
                ),
                // old-way for specifying Image type:
                // child: Image(
                //   image: AssetImage('images/dice1.png'),
                // ),
              ),
              Expanded(
                // flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rollDice2();
                      });
                    },
                    child: Image.asset('images/dice$dice2.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
