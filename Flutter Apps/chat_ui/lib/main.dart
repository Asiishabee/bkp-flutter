
import 'package:flutter/material.dart';
import './contacts.dart';

void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
  ),
  );
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
            ),
            title: Center(
              child: Text(
                "Contacts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                ),
          ),
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right:10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        ContactScreen(),
      ],
    );
  }
}
