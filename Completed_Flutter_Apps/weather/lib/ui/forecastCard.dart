import 'package:flutter/material.dart';
import 'package:weather/model/WeatherForecastModel.dart';
import 'package:weather/util/ForecastUtil.dart';

Widget forecastCard(AsyncSnapshot<WeatherForecastModel> snapshot,int index){
  var dayOfWeek="";
  var fullDate= Util.getFormattedDate(DateTime.fromMillisecondsSinceEpoch(snapshot.data.dt*1000));
  dayOfWeek = fullDate.split(",")[0];
return Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Center(child: Text(dayOfWeek)),
  ],
);
}