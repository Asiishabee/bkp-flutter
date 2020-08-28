import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _index =0;

  List quotes =[
    "Life isnt getting about,Its about giving",
    "You miss 100% of the shots u dont take",
    "Life isnt getting about,Its about giving",
    "You miss 100% of the shots u dont take",
    "Life isnt getting about,Its about giving",
    "You miss 100% of the shots u dont take",
    "Life isnt getting about,Its about giving",
    "You miss 100% of the shots u dont take",
    "Life isnt getting about,Its about giving",
    "You miss 100% of the shots u dont take",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 500,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text(quotes[_index% quotes.length],style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontStyle: FontStyle.italic
                    ),))),
              ),
            ),
            Divider(thickness: 2.5),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton.icon(onPressed: _showQuote,
                  color: Colors.redAccent,
                  icon: Icon(Icons.lightbulb_outline,color: Colors.white70,),
                  label: Text("Inspire me",style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),)),
            ),
            Spacer()
          ],
        ),
      )
    );
  }

  void _showQuote() {
    setState(() {
      _index =_index+1;
    });

  }
}




