// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:blood_bank/selection_page.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

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
  final formKey = GlobalKey<FormState>();

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
      backgroundColor: Color.fromARGB(230, 255, 121, 127),
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
            height: 50,
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
                Center(
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Email", style: styleWhite()),
                          SizedBox(
                            height: 70,
                            width: 230,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Email ID",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  )),
                              keyboardType: TextInputType.emailAddress,
                              autofillHints: [AutofillHints.email],
                              validator: (email) => email != null &&
                                      !EmailValidator.validate(email)
                                  ? 'Enter a valid email'
                                  : null,
                              controller: myController,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text("Password", style: styleWhite()),
                          SizedBox(
                            height: 70,
                            width: 230,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: Colors.white,
                                  )),
                              keyboardType: TextInputType.emailAddress,
                              controller: TextEditingController(),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 87,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(),
                                onPressed: () {
                                  setState(() {
                                    //  print(myController.text);
                                    final form = formKey.currentState;
                                    if (form!.validate()) {
                                      final email = myController.text;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SelectionPage(
                                                    emailName:
                                                        myController.text,
                                                  )));
                                    }
                                  });
                                },
                                child: Text("Login"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
