// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.orangeAccent,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Score: 5/8",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      child: const Text(
                        "What is 2+2?",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [optionBox("A."), optionBox("B.")],
                ),
                Row(
                  children: [optionBox("C."), optionBox("D.")],
                ),
              ],
            ),
          ))),
    );
  }

  Widget optionBox(String opt) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightBlue,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        height: 50,
        child: Row(
          children: [
            Text(
              opt,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
