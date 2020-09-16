import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final int questionNumber;
  final String questionValue;
  Questions(this.questionNumber, this.questionValue);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${this.questionNumber + 1}) ${this.questionValue} ?",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green[700], fontSize: 24),
      ),
      width: 500,
      margin: EdgeInsets.only(top: 100, bottom: 100),
    );
  }
}
