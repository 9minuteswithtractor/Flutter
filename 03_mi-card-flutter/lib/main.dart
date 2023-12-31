import 'package:flutter/material.dart';

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
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/peter-lightgray.png'),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Peter Vilsons',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Zeyada',
                      height: 0.6, // this reduces space between Text widgets
                    ),
                  ),
                  Text(
                    'flutter developer intern',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.teal[200],
                      fontFamily: 'ShareTechMono',
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                    width: 180.0,
                    child: Divider(
                      color: Colors.white70,
                    ),
                  ),
                  Card(
                    elevation: 7,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 13.0,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[200],
                        size: 30.0,
                      ),
                      title: Text(
                        '+47 3588370338',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontFamily: 'ShareTechMono',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.teal[300],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 13.0,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal[200],
                        size: 30.0,
                      ),
                      title: Text(
                        'peter@flutter.dev',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontFamily: 'ShareTechMono',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.teal[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
