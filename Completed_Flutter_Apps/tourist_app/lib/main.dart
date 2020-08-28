import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:touristapp/widgets/hotelChoose.dart';
import './widgets/destinationChoose.dart';
import './widgets/hotelChoose.dart';


void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
  ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex=0;
  int _currentTab=0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.home,
    FontAwesomeIcons.book,
    FontAwesomeIcons.map,
  ];

  static get icon => null;

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          print(_selectedIndex);
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex ==index? Colors.indigo[300]
              : Colors.indigo[200],
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: FaIcon(
            _icons[index],
            size: 25.0,
            color: _selectedIndex ==index? Colors.indigo[500]
                :Colors.indigo[400],

          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: <Widget>[
            Padding(

              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                  "What would you like to find?",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                      (MapEntry map) => _buildIcon(map.key),
              ).toList()
            ),
            SizedBox(height: 20),
            DestinationChoose(),
            SizedBox(height: 20),
            hotelChoose(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
            print(_currentTab);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: _currentTab ==_currentTab? Colors.indigo[400]
                  : Colors.grey[300],
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_hospital,
              size: 30.0,
              color: _currentTab ==_currentTab? Colors.indigo[400]
                  : Colors.grey[300],

            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 30.0,
              color: _currentTab ==_currentTab? Colors.indigo[400]
                  : Colors.grey[300],
            ),
            title: SizedBox.shrink(),
          ),
        ],


      ),
    );
  }
}
