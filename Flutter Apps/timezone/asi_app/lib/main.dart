import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),

));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int gradePoint = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      appBar: AppBar(
        title: Text(
            'MY RESUME',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[500],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            gradePoint +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/Asi.png'),
              radius: 55.0,
            ),
            Divider(
              height: 20.0,
              color: Colors.white,
            ),

            Row(
              children: <Widget>[
                Text(
                  'NAME :',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
                SizedBox(width: 10.0),
                Text(
                  'ASIISHA BEE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
              ],
            ),

            SizedBox(height: 20.0),

            Row(
              children: <Widget>[
                Text(
                  'DATE OF BIRTH :',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
                SizedBox(width: 10.0),
                Text(
                  '26/02/1999',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
              ],

            ),

            SizedBox(height: 20.0),

            Row(
              children: <Widget>[
                Text(
                  'QUALIFICATION :',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
                SizedBox(width: 10.0),

                Text(
                  'B.E-CSE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
              ],

            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                SizedBox(width: 10.0),
                Text(
                  '8056974632',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                SizedBox(width: 10.0),
                Text(
                  'asiisha26@gmail.ccom',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: () {
                    print('clicked me');
                  },
                  icon:  Icon(
                      Icons.phonelink
                  ),
                  label: Text('SKILLS'),
                  color: Colors.white,



                ),



              ],

            ),

            Row(
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: () {
                    print('you tapped me');
                  },
                  icon:  Icon(
                    Icons.library_books,
                  ),
                  label: Text('CERTIFICATIONS'),
                  color: Colors.white,


                ),



              ],

            ),


            Row(
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: () {
                    print('you clicked me');
                  },
                  icon:  Icon(
                    Icons.add_to_home_screen,
                  ),
                  label: Text('PROJECTS'),

                  color: Colors.white,


                ),



              ],

            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Text(
                  'Earned Grade Points :',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
                SizedBox(width: 10.0),

                Text(
                  '$gradePoint',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ) ,
              ],

            ),







          ],









        ),



      ),

    );
  }
}