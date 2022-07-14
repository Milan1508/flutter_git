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
  String name = 'sd';
  String imageURL = 'sd';

  Column interface(String name, String imageURL) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageURL),
            ),
            SizedBox(width: 15),
            Text(
              name,
              style: TextStyle(fontSize: 26),
            ),
          ],
        ),
        Divider(
          height: .6,
          color: Colors.grey[800],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("GHFlutter"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          interface("midvai",
              "https://images.pexels.com/photos/7148060/pexels-photo-7148060.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          interface("abeyekon",
              "https://images.pexels.com/photos/4348079/pexels-photo-4348079.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          interface("mastplanhe",
              "https://images.pexels.com/photos/4348079/pexels-photo-4348079.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          interface("bahudbadhiya",
              "https://images.pexels.com/photos/4348079/pexels-photo-4348079.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ],
      )),
    );
  }
}
