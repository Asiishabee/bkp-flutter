import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:touristapp/models/activity.dart';
import 'package:touristapp/models/destination.dart';

class DestinationScreen extends StatefulWidget {

  final Destination destination;

  DestinationScreen({this.destination});
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {

  Text _buildRatingStars(int rating){
    String stars = "";
    for(int i=0; i< rating; i++){
      stars +='⭐';
    }
    return Text(stars);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Stack(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20.0,left: 5.0,right: 5.0),
            child: Container(
              height: (MediaQuery.of(context).size.height*0.5),
              width: double.infinity,


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0,2.0),
                    blurRadius: 6.0
                    )
                ],
              ),
              child: Hero(
                tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:10.0, vertical: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: ()=> Navigator.pop(context),
              ),
              Row(

              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: ()=> Navigator.pop(context),
                ),

                IconButton(
                  icon: Icon(Icons.sort),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: ()=> Navigator.pop(context),
                ),
              ],

              ),
            ],),
          ),
          Padding(
            padding: EdgeInsets.only(left:40.0,top: 300.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.destination.city,
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
                      size: 15.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      widget.destination.country,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:320.0,top: 310.0),
            child: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
          )
        ],
        ),
        Expanded(

          child: ListView.builder(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            itemCount: widget.destination.activities.length,
            itemBuilder: (BuildContext context, int index) {
              Activity activity = widget.destination.activities[index];
              return Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:100,right: 20,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Container(
                            width:120,
                            child: Text(
                                activity.name,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[600],
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),


                          ),


                          Column(children: <Widget>[
                            Text('\$${activity.price}' ,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.indigo[500],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text( 'per pax' ,
                              style: TextStyle(
                                color: Colors.indigo[200],

                              ),),
                            /*_buildRatingStars(activity.rating),*/
                          ],
                          ),
                        ],
                        ),
                        Text(
                          activity.type,
                          style: TextStyle(
                          color: Colors.indigo[200],
                        ),
                        ),
                       _buildRatingStars(activity.rating),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                          Container(

                            width: 70,
                              decoration: BoxDecoration(
                                color:Colors.indigo[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            alignment: Alignment.center,
                            child: Text(
                              activity.startTimes[0],
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Container(
                            width: 70,
                            decoration: BoxDecoration(
                              color:Colors.indigo[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              activity.stopTimes[0],
                            ),

                          ),
                        ],)
                      ],),
                    ),

                    ),
                  Positioned(
                    left: 20,
                    top:15,
                    bottom:15.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        width: 110,
                          image: AssetImage(activity.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
      ),

    );
  }
}
