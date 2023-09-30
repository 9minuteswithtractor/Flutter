import 'package:flutter/material.dart';
import 'package:xylophone/utils/note_player.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(1);
              },
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(2);
              },
              child: Container(
                color: Colors.orange,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(3);
              },
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(4);
              },
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(5);
              },
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(6);
              },
              child: Container(
                color: Colors.indigo,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playNote(7);
              },
              child: Container(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
