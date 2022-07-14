// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Myapp(),
    ));

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Container myContainer() {
    return Container(
      margin: EdgeInsets.all(5),
      // height: height,
      // width: width,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(25)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Responsive UI"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(flex: 2, child: myContainer()),
                Expanded(flex: 1, child: myContainer()),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [Expanded(flex: 1, child: myContainer())],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(flex: 2, child: myContainer()),
                Expanded(flex: 1, child: myContainer()),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [Expanded(flex: 1, child: myContainer())],
            ),
          )
        ],
      )),
    );
  }
}
