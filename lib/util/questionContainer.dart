import 'package:Quiz/util/answers.dart';
import 'package:Quiz/util/questions.dart';
import 'package:Quiz/util/resetButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget questionContainer(
    {questionIndex, questions, answerQuestion, handleReset}) {
  return Column(children: [
    Questions(questionIndex, questions[questionIndex].getQuestion),
    ...questions[questionIndex].getAnswer.map((ans) => Answers(
          ans,
          handlePress: answerQuestion,
        )),
    resetButton(
        name: "Reset",
        handleReset: handleReset,
        questionIndex: questionIndex,
        bgColor: Colors.yellowAccent,
        bdrRadius: BorderRadius.circular(35))
  ]);
}
