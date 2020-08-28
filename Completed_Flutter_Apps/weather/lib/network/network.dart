import 'dart:convert';

import 'package:weather/model/WeatherForecastModel.dart';
import 'package:weather/util/ForecastUtil.dart';
import 'package:http/http.dart';



class Network{
  Future<WeatherForecastModel> getWeatherForecast({String cityName}) async {

    var finalUrl="http://api.openweathermap.org/data/2.5/weather?q="+cityName+"&APPID="+Util.appId+"";
    final response= await get(Uri.encodeFull(finalUrl));
    print("URL:${Uri.encodeFull(finalUrl)}");

    if(response.statusCode ==200){
      print("weather data: ${response.body}");
      return WeatherForecastModel.fromJson(json.decode(response.body));
    }else{
      throw Exception("Error getting weather forecast");
    }


  }

}