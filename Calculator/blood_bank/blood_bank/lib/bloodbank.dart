// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
      home: bloodApp(),
    ));

class bloodApp extends StatefulWidget {
  const bloodApp({Key? key}) : super(key: key);

  @override
  State<bloodApp> createState() => _bloodAppState();
}

class _bloodAppState extends State<bloodApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color.fromARGB(255, 121, 121, 121),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "Sarita\nBlood\nBank",
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 1.1),
                      ),
                      //    trade mark
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 1, vertical: 0),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  width: 160,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Blood Group',
                          style: TextStyle(fontSize: 12, color: Colors.red),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("B +ve",
                            style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Add Units',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 45,
                                  ),
                                  if (counter > 0)
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromARGB(
                                              255, 234, 232, 232),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter -= 1;
                                          });
                                        },
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    counter.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 45,
                                  ),
                                  if (counter < 9)
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color.fromARGB(
                                                        255, 211, 210, 210))),
                                        onPressed: () {
                                          setState(() {
                                            counter += 1;
                                          });
                                        },
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ))
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            if (counter >= 9)
              Text("You have reached maximum unit limit",
                  style: TextStyle(
                    backgroundColor: Colors.red,
                  ))
          ],
        ),
      )),
    );
  }
}
