import 'package:Quiz/util/resetButton.dart';
import 'package:flutter/material.dart';

Widget testCompletion({handleReset}) {
  return Container(
    width: 500,
    margin: EdgeInsets.only(top: 250),
    child: Column(
      children: [
        Text(
          "Test Completed Successfully !",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        resetButton(
            name: "Retake Quiz",
            handleReset: handleReset,
            bdrRadius: BorderRadiusDirectional.circular(10))
      ],
    ),
  );
}
