// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int total = 0;
  int leftClicks = 0;
  int rightClicks = 0;

  Widget cardWithButton(int counter, {required void onPressed()}) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 10),
      color: Colors.blueGrey,
      child: Column(children: [
        Text(counter.toString()),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(onPressed: onPressed, child: Icon(Icons.add))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              padding: EdgeInsets.all(40),
              color: Colors.blueGrey,
              child: Text(
                total.toString(),
                style: TextStyle(fontSize: 30),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cardWithButton(leftClicks, onPressed: () {
                total++;
                leftClicks++;
                setState(() {});
              }),
              SizedBox(
                width: 30,
              ),
              cardWithButton(rightClicks, onPressed: () {
                total++;
                rightClicks++;
                setState(() {});
              })
            ],
          ),
        ],
      )),
    );
  }
}
