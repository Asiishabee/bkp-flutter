import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/model/WeatherForecastModel.dart';
import 'package:weather/util/ForecastUtil.dart';
import 'package:weather/util/convertIcon.dart';

Widget midView(AsyncSnapshot<WeatherForecastModel> snapshot){
  var forecastItem = snapshot.data.sys;
  Container midView=Container(
    child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${snapshot.data.name},${snapshot.data.sys.country}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),),
          Text("${Util.getFormattedDate(DateTime.fromMillisecondsSinceEpoch(snapshot.data.dt*1000))}",
          style: TextStyle(

          ),),
          SizedBox(height: 10),
//          Icon(FontAwesomeIcons.cloudSunRain,color:Colors.lightBlue[300],size:180),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getWeatherIcon(weatherDescription: snapshot.data.weather[0].main,color: Colors.lightBlue,size: 160),
        ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${snapshot.data.main.temp.toStringAsFixed(0)}°F",
                  style: TextStyle(
                    fontSize: 25,
                  )),
                SizedBox(width: 10),
                Text("${snapshot.data.weather[0].description.toUpperCase()}"),

              ],

            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${snapshot.data.wind.speed.toStringAsFixed(1)} mi/h"),
                      Icon(FontAwesomeIcons.wind,color:Colors.lightBlue[400],size: 20),
                    ],
                  ),
                ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${snapshot.data.main.humidity.toStringAsFixed(0)} %"),
                          Icon(FontAwesomeIcons.grinBeamSweat,color: Colors.lightBlue[400],),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${snapshot.data.main.tempMax.toStringAsFixed(0)} °F"),
                          Icon(FontAwesomeIcons.temperatureHigh,color: Colors.lightBlue[400],size: 20),
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
  return midView;
}