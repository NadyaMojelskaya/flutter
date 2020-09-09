import 'package:flutter/material.dart';
import 'package:flutterapp/quiz.dart';

void main() {
  runApp(MaterialApp(
      title: 'Navigation Basics',
      home: MyApp(),
    initialRoute: '/',
  ));
}

class MyApp extends StatelessWidget{
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text("Категории")
      ),
      body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: RaisedButton( color: Color(0xFF64B5F6),textColor: Colors.white,
                child: Text("Кубизм",style:TextStyle(fontSize: 20)),
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Begin("Кубизм")),
                  );
                }
                )
            ),

            SizedBox(
                width: double.infinity,
                child: RaisedButton( color: Color(0xFF64B5F6),textColor: Colors.white,
                    child: Text("Импрессионизм",style:TextStyle(fontSize: 20)),
                    onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Begin("Импрессионизм")),
                      );
                    }
                )
            ),

            SizedBox(
                width: double.infinity,
                child: RaisedButton( color: Color(0xFF64B5F6),textColor: Colors.white,
                    child: Text("Абстракционизм",style:TextStyle(fontSize: 20)),
                    onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Begin("Абстракционизм")),
                      );
                    }
                )
            ),

          ]
      )
    );
  }
}
class Begin extends StatelessWidget{
  String data;
  Begin(this.data);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Text(data),
    ),
    body: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(height: 200.0,
        child:Text("Давайте проверим Ваши знания в данной категории", style: TextStyle(fontSize: 23),textAlign: TextAlign.center,)),
      RaisedButton(color: Color(0xFF64B5F6),textColor: Colors.white,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => quiz(data)),
                (Route<dynamic> route) => false,
          );// Navigator.push(context);
        },
        child: Text('Начать'),
      ),
    ]),
    );
  }
}