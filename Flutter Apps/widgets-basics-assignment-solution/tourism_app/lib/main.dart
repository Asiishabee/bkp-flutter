import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './destination.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your trips',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Your trips',
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Colors.grey[300],
            child: Container(
              width: 300,
              child: Text(
                  "Where you like to travel?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            elevation: 5,
          ),
          Card(
            child: Text("Top Destinations"),
          ),
        ],

      ),
    );
  }
}
