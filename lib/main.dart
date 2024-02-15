import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int q1 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
            child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () => setState(() {
                        q1 = Random().nextInt(5) + 1;
                      }),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset('images/ball$q1.png'),
                  )))
        ])),
      ),
    );
  }
}
