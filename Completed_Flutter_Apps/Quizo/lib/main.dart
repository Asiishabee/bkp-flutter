import 'package:flutter/material.dart';
import 'package:quizz/questions.dart';

void main() {
  runApp(MaterialApp(home: QuizPage(),));
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  int _currentQuesIndex =0;

  List questionsList =[
    Question("Prince Harry is taller than Prince William", false),
    Question("The star sign Aquarius is represented by a tiger",true),
    Question("Meryl Streep has won two Academy Awards",false),
    Question("Marrakesh is the capital of Morocco",false),
    Question("Idina Menzel sings 'let it go' 20 times in 'Let It Go' from Frozen",false),
  Question("Waterloo has the greatest number of tube platforms in London",true),
    Question("M&M stands for Mars and Moordale",false),
    Question("Gin is typically included in a Long Island Iced Tea",true),
    Question("The unicorn is the national animal of Scotland",true),
    Question("There are two parts of the body that can't heal themselves",false),
  Question("Howard Donald is the oldest member of Take That",true),
  Question("The Great Wall of China is longer than the distance between London and Beijing",true),
  Question("There are 219 episodes of Friends",false),
  Question("'A' is the most common letter used in the English language",false),
  Question("A lion's roar can be heard up to eight kilometres away",true),
  Question("In Harry Potter, Draco Malfoy has no siblings",false),
    Question("Louis Walsh is older than Simon Cowell",true),
  Question("Monaco is the smallest country in the world",false),
  Question("'What Do You Mean' was Justin Bieber's first UK number one single",true),
  Question("The river Seine in Paris is longer than the river Thames in London",true),
  Question("A cara cara navel is a type of orange",true),
  Question("There are five different blood groups",false),
  Question("Cinderella was the first Disney princess",false),
  Question("ASOS stands for As Seen On Screen",true)

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("QuesTions",style: TextStyle(fontStyle: FontStyle.italic),),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(child: Image.asset("Image/QuizImage.png",width:250,height: 150, )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blueGrey,style: BorderStyle.solid)
                  ),
                  height: 120,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(questionsList[_currentQuesIndex].questionText,style: TextStyle(
                      fontSize: 17,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(onPressed: ()=> _previousQuestion(),color: Colors.blueGrey,
                      child: Icon(Icons.arrow_back,color: Colors.white),),
                    RaisedButton(onPressed: ()=> _checkAnswer(true,context),color: Colors.blueGrey,
                    child: Text("TRUE",style: TextStyle(color: Colors.white),),),
                    RaisedButton(onPressed: ()=> _checkAnswer(false,context),color: Colors.blueGrey,
                      child: Text("FALSE",style: TextStyle(color: Colors.white),),),
                    RaisedButton(onPressed: ()=> _nextQuestion(),color: Colors.blueGrey,
                      child: Icon(Icons.arrow_forward,color: Colors.white),),
                      ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(bool userChoice, BuildContext context) {
    if(userChoice ==questionsList[_currentQuesIndex].isCorrect){
      print("Yes Correct");

      final snackBar =SnackBar(
        duration:Duration(microseconds: 500),
        content: Text("Correct"),
      backgroundColor: Colors.green,);
      Scaffold.of(context).showSnackBar(snackBar);
      _updateQuestion();
    }else{
      print("No Wrong");

      final snackBar =SnackBar(
        duration:Duration(microseconds: 500),
        content: Text("InCorrect"),
      backgroundColor: Colors.red,);
      Scaffold.of(context).showSnackBar(snackBar);
      _updateQuestion();
    }
  }

  _previousQuestion() {
    setState(() {
      if( _currentQuesIndex>0){
        _currentQuesIndex--;
      }else{
        //nothing
      }
    });


  }

  _nextQuestion() {
    _updateQuestion();
  }

  _updateQuestion(){
    setState(() {
      _currentQuesIndex =(_currentQuesIndex+1)%questionsList.length;
    });
  }
}
