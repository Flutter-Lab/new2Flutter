// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // Random random = Random(100);

  int colorName = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    String buttonText = 'Press Me';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$colorName',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),

              ),
              SizedBox(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  primary: Colors.brown,
                ),
                onPressed: () {
                  setState(() {
                    colorName = Random().nextInt(10);
                  });
                },
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(height: 10,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  primary: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    colorName = Random().nextInt(10);
                  });
                },
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
