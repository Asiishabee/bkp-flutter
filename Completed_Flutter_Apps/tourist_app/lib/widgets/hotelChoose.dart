import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:touristapp/models/destination.dart';
import 'package:touristapp/models/hotel.dart';

class hotelChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left:20.0,right:20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Exclusive Hotels',
                style: TextStyle(
                  color: Colors.black,
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
              Hotel hotel =hotels[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 240,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom:15.0,
                      child: Container(
                        height: 120,
                        width: 240.0,

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
                              Text(
                                hotel.name,
                                style:TextStyle(
                                  color: Colors.indigo[500],
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                hotel.address,
                                style: TextStyle(
                                  color: Colors.indigo[300],
                                ),

                              ),
                              SizedBox(height: 2.0),
                              Text(
                                '\$${hotel.price} / night',
                                style: TextStyle(
                                  color: Colors.indigo[500],
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height:180,
                          width:220,
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,

                        ),
                      ),

                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );

  }
}
