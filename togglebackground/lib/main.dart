// ignore_for_file: prefer_const_constructors

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
      home: ToggleWorking(),
    );
  }
}

class ToggleWorking extends StatefulWidget {
  const ToggleWorking({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ToggleWorkingState();
  }
}

class ToggleWorkingState extends State<ToggleWorking> {
  Color color = Colors.grey;
  int countervalue = 0;
  TextEditingController nameController =
      TextEditingController(text: DateTime.now().toString());

  getEmail() {
    return "email@gmail.com";
  }

  @override
  void initState() {
    nameController.text = getEmail();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                countervalue += 1;
                print(countervalue);
                setState(() {});
              },
              child: Text("add"),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              countervalue.toString(),
              style: TextStyle(color: Colors.deepPurple, fontSize: 30),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                countervalue -= 1;
                print(countervalue);
                setState(() {});
              },
              onLongPress: (() {
                setState(() {
                  color = Colors.white;
                });
              }),
              child: Text("Subtract"),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Please type your name'),
            TextField(
              controller: nameController,
            ),
            SizedBox(
              height: 20,
            ),
            if (countervalue < 10)
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print(nameController.text.toString());
                    });
                  },
                  child: Text("Im here")),
          ],
        ),
      )),
    );
  }
}
