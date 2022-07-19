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
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.floor().toString() + " %"),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        counter -= 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    )),
                Expanded(
                  child: LinearProgressIndicator(
                    value: counter / 100,
                    minHeight: 25,
                    color: Colors.teal,
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        counter += 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
