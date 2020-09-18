import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answerValue;
  final dynamic handlePress;
  Answers(this.answerValue, {this.handlePress});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: handlePress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.indigoAccent,
        padding: EdgeInsets.all(15),
        child: Text(
          this.answerValue,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      width: 250,
    );
  }
}
