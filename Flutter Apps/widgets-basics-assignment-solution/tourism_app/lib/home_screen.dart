import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Where you want to travel?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ) ,
              ),
            ),
          ],

      ),
      ),
    );
  }
}
t