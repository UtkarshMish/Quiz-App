import 'package:Quiz/class/QuizQuestion.dart';
import 'package:Quiz/util/questionContainer.dart';
import 'package:Quiz/util/testCompletion.dart';
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
  bool isCompleted = false;
  void answerQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1)
        questionIndex++;
      else if (questionIndex == questions.length - 1) isCompleted = true;
    });
  }

  void handleReset() {
    setState(() {
      questionIndex = 0;
      isCompleted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz",
            style: TextStyle(fontSize: 27),
          ),
          centerTitle: true,
        ),
        body: !isCompleted
            ? questionContainer(
                questionIndex: questionIndex,
                questions: questions,
                answerQuestion: answerQuestion,
                handleReset: handleReset)
            : testCompletion(handleReset: handleReset),
        backgroundColor: Colors.grey[350],
      ),
    );
  }
}
