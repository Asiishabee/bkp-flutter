import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:touristapp/models/destination.dart';
import 'package:touristapp/screen/destinationScreen.dart';

// ignore: must_be_immutable
class DestinationChoose extends StatelessWidget {
  var index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left:20.0,right:20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top Destinations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              GestureDetector(
                onTap: () => print("See all"),
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.0,
                    color: Colors.indigo[600],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.white,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context,int index) {
                Destination destination =destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DestinationScreen(
                            destination: destination,
                        ),
                    ),
                ),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                    Positioned(
                      bottom:15.0,
                      child: Container(
                        height: 120,
                        width: 200.0,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: <Widget>[

                              Text('${destination.activities.length} actvities',
                                  style:TextStyle(
                                    color: Colors.indigo[500],
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                              ),
                              Text(destination.description,
                                style: TextStyle(
                                  color: Colors.indigo[300],
                                ),

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color:Colors.black,
                              blurRadius: 6.0,
                              offset: Offset(0,2),

                          )

                        ]
                      ),
                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: destination.imageUrl,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height:180,
                                width:180,
                                image: AssetImage(destination.imageUrl),
                                fit: BoxFit.cover,

                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.0,
                            bottom: 10.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  destination.city,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 10.0,
                                      color: Colors.white,
                                      ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      destination.country,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ],
                  ),
                ),
              );
    },
              ),
          ),
    ],
          );

  }
}
