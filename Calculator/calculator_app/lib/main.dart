// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Square Calculator",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(
                      1000,
                    )),
                child: Center(
                    child: Text(
                  number.toString(),
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {
                        number++;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                  TextButton(
                      onPressed: () {
                        number--;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.minimize,
                        color: Colors.black,
                      )),
                ],
              )
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Calculate the square")),
        ],
      )),
    );
  }
}
