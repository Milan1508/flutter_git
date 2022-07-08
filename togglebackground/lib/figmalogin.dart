// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyAppFigma(),
    ));

class MyAppFigma extends StatefulWidget {
  const MyAppFigma({Key? key}) : super(key: key);

  @override
  State<MyAppFigma> createState() => _MyAppFigmaState();
}

class _MyAppFigmaState extends State<MyAppFigma> {
  TextStyle styleWhite() {
    return TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2);
  }

  TextEditingController nameController =
      TextEditingController(text: "Enter Name");

  getName() {
    return "milansood15@gmail.com";
  }

  @override
  void initState() {
    super.initState();
    nameController.text = getName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 108, 82),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            //width: 230,
          ),
          Text(
            'Life Drop',
            style:
                TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 55),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            'your blood can save lives',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 140,
          ),
          // SizedBox(
          //   width: double.infinity,
          // ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 70,
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email", style: styleWhite()),
                      SizedBox(
                        height: 33,
                        width: 230,
                        child: TextField(
                          controller: nameController,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Password", style: styleWhite()),
                      SizedBox(
                        height: 133,
                        width: 230,
                        child: TextField(
                          controller: TextEditingController(text: "********"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 87,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Login"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
