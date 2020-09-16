import 'package:Quiz/class/QuizQuestion.dart';
import 'package:Quiz/util/answers.dart';
import 'package:Quiz/util/questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<QuizQuestion> questions = [
    new QuizQuestion("What is Capital of Delhi",
        ["Delhi", "Bengaluru", "Mumbai", "Kolkata"]),
    new QuizQuestion("What is tallest Mountain in world",
        ['Pichu Peru', "k2", "Mount Everest", "Someother"])
  ];
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) questionIndex++;
    });
    print("answered Question");
  }

  void handleReset() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Questions(questionIndex, questions[questionIndex].getQuestion),
            ...questions[questionIndex].getAnswer.map((ans) => Answers(
                  ans,
                  handlePress: answerQuestion,
                )),
            RaisedButton(
              onPressed: questionIndex != 0 ? handleReset : null,
              child: Text("Reset"),
              color: Colors.yellowAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              disabledColor: Colors.grey[300],
            )
          ],
        ),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}
