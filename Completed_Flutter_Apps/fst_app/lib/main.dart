import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex +1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    const questions = [
      {
        "questionText":"what is your fav color?",
        "answers":["Black","White","yellow","Green"]
      },
      {
        "questionText":"what is your fav animal?",
        "answers":["Fox","cat","Lion","Tiger"]
      },
      {
        "questionText":"what is your fav food?",
        "answers":["Fried rice","Noodles","Biriyani","Chicken"]
      },
      {
        "questionText":"what is your fav Drinks?",
        "answers":["Fanta","Coca Cola","Maaza","Pepsi"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("QUIZ")
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answers"] as List<String>).map((answer) {
             return Answer(_answerQuestion, answer);
           }).toList()
          ],
        ),
      ),

    );
  }
}

