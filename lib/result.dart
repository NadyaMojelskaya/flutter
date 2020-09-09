import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int result_score;
  Result(this.result_score);
  String get result_phrase{
    if (result_score>1)return 'good job';
    else return 'try again';
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[Text(result_phrase),
      RaisedButton (child: Text("to categories"),
        onPressed: (){Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route)=>false);}//(){ Navigator.pushNamed(context, '/');},
      )
      ] ,
    );

  }
}