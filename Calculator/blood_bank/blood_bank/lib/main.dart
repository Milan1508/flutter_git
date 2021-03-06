// ignore_for_file: prefer_const_constructors

import 'package:blood_bank/login_page.dart';
import 'package:flutter/material.dart';
import 'package:blood_bank/selection_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/LoginPage',
      routes: {
        '/LoginPage': (context) => const LoginPage(),
        //'/Selection': (context) => const SelectionPage(),
      },
    );
  }
}
