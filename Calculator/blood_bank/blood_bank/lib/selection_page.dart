// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  final String emailName;
  const SelectionPage({
    Key? key,
    required this.emailName,
  }) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  void printName() {
    //print();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(230, 255, 121, 127),
          body: SafeArea(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Your blood can save lives',
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 1, fontSize: 26),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'logged in as ${widget.emailName}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Donate Blood",
                      style: TextStyle(fontSize: 18),
                    )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Donate Blood",
                      style: TextStyle(fontSize: 18),
                    )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
