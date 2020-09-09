import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  final String answerText;
  final Function handler;
  AnswerButton(this.handler, this.answerText);
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: handler,
      )
    );
  }
}