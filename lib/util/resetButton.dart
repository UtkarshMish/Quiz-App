import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget resetButton(
    {name, handleReset, questionIndex = 1, bgColor = Colors.teal, bdrRadius}) {
  return Container(
    margin: EdgeInsets.all(25),
    child: RaisedButton(
      padding: EdgeInsets.all(25),
      onPressed: questionIndex != 0 ? handleReset : null,
      color: bgColor,
      disabledColor: Colors.grey[350],
      shape: RoundedRectangleBorder(borderRadius: bdrRadius),
      child: Text(
        name,
        style: TextStyle(fontSize: 19),
      ),
    ),
  );
}
