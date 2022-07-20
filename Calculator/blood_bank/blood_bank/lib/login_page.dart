// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:blood_bank/selection_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle styleWhite() {
    return TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2);
  }

  final myController = TextEditingController();

  String getName() {
    return myController.text;
  }

  // @override
  // void initState() {
  //   super.initState();
  //   nameController.text = getName();
  // }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
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
                          controller: myController,
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
                            onPressed: () {
                              setState(() {
                              //  print(myController.text);
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  SelectionPage(emailName:myController.text,)) );
                              });
                            },
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
