import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/model/WeatherForecastModel.dart';
import 'package:weather/network/network.dart';
import 'package:http/http.dart';
import 'package:weather/ui/botomView.dart';
import 'package:weather/ui/mid_view.dart';

void main() {
  runApp(MaterialApp(home: WeatherPage(),));
}

class WeatherPage extends StatefulWidget {



  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  Future<WeatherForecastModel> forecastObject;
  String _cityName="Chennai";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forecastObject=getWeather();
//    forecastObject.then((weather) {
//       print(weather.timezone);
//    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          textFieldView(),
          Container(
            child: FutureBuilder<WeatherForecastModel>(
              future: forecastObject,
              builder: (BuildContext context, AsyncSnapshot<WeatherForecastModel> snapshot){
                if(snapshot.hasData){
                  return Column(
                    children: [
                      midView(snapshot),
                      bottomView(snapshot, context)
                    ],
                  );
                }else{
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }

  Widget textFieldView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: TextField(
          cursorColor: Colors.grey[600],
          decoration: InputDecoration(
            hintText: "Enter City Name",
              fillColor: Colors.black26,

            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.all(8)
          ),
          onSubmitted: (value){
                    setState(() {

                      _cityName=value;
                      forecastObject=getWeather(cityName: _cityName);
                    });
          },
        ),
      ),
    );
  }

  Future<WeatherForecastModel> getWeather({String cityName}) =>
      Network().getWeatherForecast(cityName: _cityName);
}
