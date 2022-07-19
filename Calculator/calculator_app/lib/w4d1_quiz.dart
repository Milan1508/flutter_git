// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> questions = [
    "What is 2+2?",
    "What is 7*5?",
    "What is 20% of 40?",
    "END OF QUIZ\nSelect any opt"
  ];

  List<List<String>> options = [
    ["4", "5", "6", "7"],
    ["34", "35", "36", "37"],
    ["5", "6", "7", "8"],
    ["Na", "Na", "Na", "Na"],
  ];

  List<String> answers = ["A", "B", "D","NON"];

  int currentScore = 0;
  int attemptedQuestions = 0;
  int index = 0;

  void checkAns(String selected) {
    //print(selected);
    setState(() {
      if (selected == answers[index]) {
        currentScore++;
      }
      submitOption();
    });
  }

  void submitOption() {
    setState(() {
      if (index < questions.length - 1) {
        index++;
        attemptedQuestions++;
      } else {
        index = 0;
        attemptedQuestions = 0;
        currentScore = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(index);
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.orangeAccent,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Score: $currentScore/$attemptedQuestions",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      child: Text(
                        questions[index],
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    optionBox(
                        checkAns: checkAns,
                        //onTap: submitOption,
                        optNo: "A",
                        option: options[index][0]),
                    optionBox(
                        checkAns: checkAns,
                        //onTap: submitOption,
                        optNo: "B",
                        option: options[index][1])
                  ],
                ),
                Row(
                  children: [
                    optionBox(
                        checkAns: checkAns,
                        //onTap: submitOption,
                        optNo: "C",
                        option: options[index][2]),
                    optionBox(
                        checkAns: checkAns,
                        //onTap: submitOption,
                        optNo: "D",
                        option: options[index][3]),
                  ],
                ),
              ],
            ),
          ))),
    );
  }
}
// Todo : implement increment through pass by function (index++)

Widget optionBox(
    { //required void onTap(),
    required void checkAns(String ans),
    required String optNo,
    required String option}) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        checkAns(optNo);
        // onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightBlue,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        height: 50,
        child: Row(
          children: [
            Text(
              "$optNo. $option",
              style: textstyle(),
            ),
          ],
        ),
      ),
    ),
  );
}

TextStyle textstyle() {
  return TextStyle(color: Colors.white, fontSize: 25);
}
