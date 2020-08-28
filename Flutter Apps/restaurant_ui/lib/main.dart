import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:SafeArea(
        child:Column(
          children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Restaurant App UI KIT",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Icon(
            Icons.add_alert,
            size: 20.0,
            color: Colors.black,
          ),
          ]

          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Dishes",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "View more",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ],


          ),
            SizedBox(height: 20),
            Container(
              height: 250,
              color: Colors.grey[200],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Text(
                  "Asparagus",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]


            ),
        ],

        ),

      ),

    );
  }
}
