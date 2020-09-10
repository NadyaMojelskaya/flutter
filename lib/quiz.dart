import 'package:flutter/material.dart';
import './answer_button.dart';
import './result.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './crud.dart';
class quiz extends StatefulWidget{
  String data;
  String question;
  String var1;

  quiz(this.data);
  @override
  _quizState createState()=>_quizState("plj1Yjd5LMTpBZdTlQxz");
}
crudMethods crud = new crudMethods;
class _quizState extends State<quiz>{
  QuerySnapshot snapshot;
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {print("setstate");});
    });
crud.getData().then((results){
setState(() {
  snapshot = results;
});
})
  }
  String Cat;
//  _quizState(this.Cat);
  List<String> qs;


  List<DocumentSnapshot> documents;
  var total_score=0;
  var Qindex=0;
  void _next(int i){
    setState((){Qindex++;total_score+=i;});
  }

  final String documentId;

  _quizState(this.documentId);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("slkdfj"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Литература").snapshots(),
        builder: (context, snapshot){
          if (!snapshot.hasData) return Text("loading");
          return Column(
            children: <Widget>[
              Scaffold(body: Text(snapshot.data['text']))
              //return Scaffold(body: Text("${data['text']} ${data['var1']['text']}"));
              //Text(snapshot.data.documents[0]['var1']['text'])
            ],
          );
        },
      ),
    );

  }
}