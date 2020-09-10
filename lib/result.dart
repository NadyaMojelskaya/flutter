import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int result_score;
  Result(this.result_score);
  String get result_phrase{
    if (result_score>4)return '$result_score/5\n Отличный результат';
    else if(result_score>2)return '$result_score/5\nНеплохо';
    else return '$result_score/5\nПопробуйте ещё раз';
}
  @override
  Widget build(BuildContext context) {
    return
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(height: 200.0,width: double.infinity,
            child:
              Text(result_phrase, style: TextStyle(fontSize: 28),textAlign: TextAlign.center,)
          ),
          RaisedButton (child: Text("К категориям"),
            onPressed: (){Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route)=>false);}
          )
        ] ,
    );
  }
}