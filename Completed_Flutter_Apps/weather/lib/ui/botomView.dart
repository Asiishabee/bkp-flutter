import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/model/WeatherForecastModel.dart';
import 'package:weather/ui/forecastCard.dart';
import 'package:weather/util/ForecastUtil.dart';

Widget bottomView(AsyncSnapshot<WeatherForecastModel> snapshot,BuildContext context){

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("Last 7 days weather forecast".toUpperCase(),
      style: TextStyle(
        fontSize: 15,
        color: Colors.lightBlue,
      ),),
      Container(
        height: 170,
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
        child: ListView.separated(
//            scrollDirection:Axis.horizontal,
            itemBuilder: (context, index)=> ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            width: MediaQuery.of(context).size.width/3,
            height: 160,
            child: forecastCard(snapshot,index),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.grey[500],Colors.white],
              begin: Alignment.topLeft,end: Alignment.bottomLeft)
            ),
          ),
        ),
            separatorBuilder: (context, index)=> SizedBox(width: 8),
            itemCount: 1,
        ),
      )
    ],

  );
}