// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// int number = 0;

class _HomePageState extends State<HomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Square Calculator",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
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
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(number: number)));
                setState(() {});
                Navigator.pushNamed(context, '/Result');
                // print(number * number);
              },
              child: Text("Calculate the square")),
        ],
      )),
    );
  }
}

class ResultPage extends StatefulWidget {
  final int number;
  ResultPage({Key? key, required this.number}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: TextButton(
      //     child: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       setState(() {});
      //       Navigator.popUntil(
      //           context, (Route<dynamic> route) => route.isFirst);
      //     },
      //   ),
      //   title: Text("Result Page"),
      // ),
      body: Center(
          child: Text(
        (widget.number * widget.number).toString(),
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/home');
                  });
                },
                child: Text("Login")),
          ],
        ),
      )),
    );
  }
}
