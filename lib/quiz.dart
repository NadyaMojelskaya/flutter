import 'package:flutter/material.dart';
import './answer_button.dart';
import './result.dart';
class quiz extends StatefulWidget{
  String data;
  quiz(this.data);
  @override
  _quizState createState()=>_quizState(data);
}


class _quizState extends State<quiz>{
  String Cat;
  _quizState(this.Cat);
List<String> qs;
var questions =[
  {'question_text': "Назовите автора произведений 'Последний поклон', 'Царь- рыба'.",
    'ans':[{'text':'В. Белов', 'score':0},
      {'text':'В. Астафьев', 'score':1},
      {'text':'С. Залыгин', 'score':0}]},
  {'question_text': "Назовите автора статей: 'Что такое обломовщина?', 'Когда же придёт настоящий день?', 'Луч света в тёмном царстве'.",
    'ans':[{'text':'Н.А.Добролюбов', 'score':1},
  {'text':'Л.И.Писарев', 'score':0},
  {'text':'В.Г.Белинский', 'score':0},
  {'text':'А.И.Герцен', 'score':0}]},
  ];

  var total_score=0;
  var Qindex=0;
  void _next(int i){
    setState((){Qindex++;total_score+=i;});
    print('im in _next');
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Cat),
        ),
        body:Qindex<questions.length?
            Column(
                children: [
                  Text(questions[Qindex]['question_text']),
                  ...(questions[Qindex]['ans'] as List<Map<String, Object>>).map((ans_but){
                  return AnswerButton(()=>_next(ans_but['score']),ans_but['text']);
                  }).toList(),



                ]
            )//узнать сколько документов и от 0 до length
      :Result(total_score)
    );
  }
}