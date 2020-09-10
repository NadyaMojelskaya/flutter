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
  var literature =[
    {'question_text': "Назовите автора произведений 'Последний поклон', 'Царь- рыба'.",
      'ans':[{'text':'В. Белов', 'score':0},
        {'text':'В. Астафьев', 'score':1},
        {'text':'С. Залыгин', 'score':0}]},
    {'question_text': "Назовите автора статей: 'Что такое обломовщина?', 'Когда же придёт настоящий день?', 'Луч света в тёмном царстве'.",
      'ans':[{'text':'Н.А.Добролюбов', 'score':1},
        {'text':'Л.И.Писарев', 'score':0},
        {'text':'В.Г.Белинский', 'score':0},
        {'text':'А.И.Герцен', 'score':0}]},
    {'question_text': "Укажите, какие произведения принадлежат перу А.Солженицына.",
      'ans':[{'text':'"В окопах Сталинграда", "Крик"', 'score':0},
        {'text':'"Матрёнин двор", "В круге первом", "Точка кипения"', 'score':1},
        {'text':'"Факультет ненужных вещей"', 'score':0},
        {'text':'"Колымские рассказы", "Чёрные камни"', 'score':0}]},
    {'question_text': "Кому из критиков принадлежат статьи о романе А.С.Пушкина 'Евгений Онегин'?",
      'ans':[{'text':'Д.И.Писареву.', 'score':0},
        {'text':' В.Г.Белинскому.', 'score':1},
        {'text':'Н.А.Добролюбову.', 'score':0}]},
    {'question_text': "В каком произведении М.Булгакова слышится предупреждение о том, что нарушение естественного хода вещей приводит к необратимым последствиям?",
      'ans':[{'text':'"Собачье сердце".', 'score':0},
        {'text':'"Белая гвардия".', 'score':1},
        {'text':'"Мастер и Маргарита".', 'score':0}]},
  ];
  var physics =[
    {'question_text': "Камень массой m=2 кг бросили под углом α=60o к горизонту со скоростью v0=15 м/с. Найти кинетическую энергию камня в высшей точке траектории. Сопротивлением воздуха пренебречь.",
      'ans':[{'text':'56 Дж', 'score':1},
        {'text':'225 Дж', 'score':0},
        {'text':'118 Дж', 'score':0}]},
    {'question_text': "При каком процессе увеличение абсолютной температуры идеального газа в два раза приводит к увеличению давления газа в 2 раза?",
      'ans':[{'text':'изобарном', 'score':0},
        {'text':'изохорном', 'score':1},
        {'text':'изотермическом', 'score':0},
        {'text':'адиабатном', 'score':0}]},
    {'question_text': "Как изменится сила кулоновского взаимодействия двух небольших заряженных шаров при уменьшении заряда каждого из них в 2 раза, если расстояние между ними остается неизменным?",
      'ans':[{'text':'уменьшится в 4 раза', 'score':1},
        {'text':'уменьшится в 2 раза', 'score':0},
        {'text':'увеличится в 4 раза', 'score':0},
        {'text':'увеличится в 2 раза', 'score':0}]},
    {'question_text': "Во сколько раз движущийся со скоростью v=0,999с электрон “тяжелее” покоящегося?",
      'ans':[{'text':'100', 'score':0},
        {'text':'5,2', 'score':0},
        {'text':'22,4', 'score':1},
        {'text':'2', 'score':0}]},
    {'question_text': "Определить направление индукционного тока в рамке, если она находится в однородном магнитном поле, а величина магнитной индукции В уменьшается.",
      'ans':[{'text':'против часовой стрелке', 'score':0},
        {'text':' по часовой стрелке', 'score':1},
        {'text':'не вызовет появления тока', 'score':0},
        {'text':'вызовет появление переменного тока', 'score':0}]},
  ];
  var phylosophy =[
    {'question_text': "Впервые употребил слово «философия» и назвал себя «философом»:",
      'ans':[{'text':'Сократ', 'score':0},
        {'text':'Аристотель', 'score':0},
        {'text':'Пифагор', 'score':1},
        {'text':'Цицерон', 'score':0}]},
    {'question_text': "Онтология – это:",
      'ans':[{'text':'учение о всеобщей обусловленности явлений', 'score':0},
        {'text':'учение о сущности и природе науки', 'score':0},
        {'text':'учение о бытии, о его фундаментальных принципах', 'score':1},
        {'text':'учение о правильных формах мышления', 'score':0}]},
    {'question_text': "Раздел философии, в котором разрабатываются проблемы познания",
      'ans':[{'text':'Эстетика', 'score':0},
        {'text':'Этика', 'score':0},
        {'text':'Онтология', 'score':0},
        {'text':'Гносеология', 'score':1}]},
    {'question_text': "Согласно марксистской философии, суть основного вопроса философии состоит в:",
      'ans':[{'text':'отношении сознания к материи', 'score':0},
        {'text':'смысле жизни', 'score':0},
        {'text':'соотношении природного и социального миров', 'score':0},
        {'text':'движущих силах развития общества', 'score':1}]},
    {'question_text': "Агностицизм – это:",
      'ans':[{'text':'учение, отрицающее познаваемость сущности объективного мира', 'score':1},
        {'text':'учение, постулирующее наличие потусторонних сил', 'score':0},
        {'text':'учение о развитии философских знаний', 'score':0},
        {'text':'учение о ценностях', 'score':0}]},

  ];
var questions;
Function getQuestions(){
  switch (this.Cat){
    case 'Литература':{questions = literature;break;}
    case 'Физика':{questions = physics;break;}
    case 'Философия':{questions = phylosophy;break;}
  }
}
  var total_score=0;
  var Qindex=0;
  void _next(int i){
    setState((){
      Qindex++;total_score+=i;
    });
  }

  Widget build(BuildContext context) {
    getQuestions();
    return Scaffold(
        appBar: AppBar(
          title: Text(Cat),
        ),
        body:Qindex<questions.length?
            Column(
                children: [
                  Text(questions[Qindex]['question_text'],style:TextStyle(fontSize: 22),textAlign: TextAlign.center,),
                  ...(questions[Qindex]['ans'] as List<Map<String, Object>>).map((ans_but){
                  return AnswerButton(()=>_next(ans_but['score']),ans_but['text']);
                  }).toList(),

                ]
            )
      :Result(total_score)
    );
  }
}