//class WeatherForecastModel {
//  City city;
//  int cod;
//  double message;
//  int cnt;
//  List<Lista> list;
//
//  WeatherForecastModel(
//      {this.city, this.cod, this.message, this.cnt, this.list});
//
//  WeatherForecastModel.fromJson(Map<String, dynamic> json) {
//    city = json['city'] != null ? new City.fromJson(json['city']) : null;
//    cod = json['cod'];
//    message = json['message'];
//    cnt = json['cnt'];
//    if (json['list'] != null) {
//      list = new List<Lista>();
//      json['list'].forEach((v) {
//        list.add(new Lista.fromJson(v));
//      });
//    }
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    if (this.city != null) {
//      data['city'] = this.city.toJson();
//    }
//    data['cod'] = this.cod;
//    data['message'] = this.message;
//    data['cnt'] = this.cnt;
//    if (this.list != null) {
//      data['list'] = this.list.map((v) => v.toJson()).toList();
//    }
//    return data;
//  }
//}
//
//class City {
//  int id;
//  String name;
//  Coord coord;
//  String country;
//  int population;
//
//  City({this.id, this.name, this.coord, this.country, this.population});
//
//  City.fromJson(Map<String, dynamic> json) {
//    id = json['id'];
//    name = json['name'];
//    coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
//    country = json['country'];
//    population = json['population'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this.id;
//    data['name'] = this.name;
//    if (this.coord != null) {
//      data['coord'] = this.coord.toJson();
//    }
//    data['country'] = this.country;
//    data['population'] = this.population;
//    return data;
//  }
//}
//
//class Coord {
//  double lon;
//  double lat;
//
//  Coord({this.lon, this.lat});
//
//  Coord.fromJson(Map<String, dynamic> json) {
//    lon = json['lon'].toDouble();
//    lat = json['lat'].toDouble();
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['lon'] = this.lon;
//    data['lat'] = this.lat;
//    return data;
//  }
//}
//
//class Lista {
//  int dt;
//  Temp temp;
//  double pressure;
//  int humidity;
//  List<Weather> weather;
//  double speed;
//  int deg;
//  int clouds;
//  double rain;
//  double snow;
//
//  Lista(
//      {this.dt,
//        this.temp,
//        this.pressure,
//        this.humidity,
//        this.weather,
//        this.speed,
//        this.deg,
//        this.clouds,
//        this.rain,
//        this.snow});
//
//  Lista.fromJson(Map<String, dynamic> json) {
//    dt = json['dt'];
//    temp = json['temp'] != null ? new Temp.fromJson(json['temp']) : null;
//    pressure = json['pressure'].toDouble();
//    humidity = json['humidity'];
//    if (json['weather'] != null) {
//      weather = new List<Weather>();
//      json['weather'].forEach((v) {
//        weather.add(new Weather.fromJson(v));
//      });
//    }
//    speed = json['speed'].toDouble();
//    deg = json['deg'];
//    clouds = json['clouds'];
//    rain = json['rain'].toDouble();
//    snow = json['snow'].toDouble();
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['dt'] = this.dt;
//    if (this.temp != null) {
//      data['temp'] = this.temp.toJson();
//    }
//    data['pressure'] = this.pressure;
//    data['humidity'] = this.humidity;
//    if (this.weather != null) {
//      data['weather'] = this.weather.map((v) => v.toJson()).toList();
//    }
//    data['speed'] = this.speed;
//    data['deg'] = this.deg;
//    data['clouds'] = this.clouds;
//    data['rain'] = this.rain;
//    data['snow'] = this.snow;
//    return data;
//  }
//}
//
//class Temp {
//  double day;
//  double min;
//  double max;
//  double night;
//  double eve;
//  double morn;
//
//  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});
//
//  Temp.fromJson(Map<String, dynamic> json) {
//    day = json['day'].toDouble;
//    min = json['min'].toDouble();
//    max = json['max'].toDouble();
//    night = json['night'].toDouble();
//    eve = json['eve'].toDouble();
//    morn = json['morn'].toDouble();
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['day'] = this.day;
//    data['min'] = this.min;
//    data['max'] = this.max;
//    data['night'] = this.night;
//    data['eve'] = this.eve;
//    data['morn'] = this.morn;
//    return data;
//  }
//}
//
//class Weather {
//  int id;
//  String main;
//  String description;
//  String icon;
//
//  Weather({this.id, this.main, this.description, this.icon});
//
//  Weather.fromJson(Map<String, dynamic> json) {
//    id = json['id'];
//    main = json['main'];
//    description = json['description'];
//    icon = json['icon'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this.id;
//    data['main'] = this.main;
//    data['description'] = this.description;
//    data['icon'] = this.icon;
//    return data;
//  }
//}


class WeatherForecastModel {
  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherForecastModel(
      {this.coord,
        this.weather,
        this.base,
        this.main,
        this.visibility,
        this.wind,
        this.clouds,
        this.dt,
        this.sys,
        this.timezone,
        this.id,
        this.name,
        this.cod});

  WeatherForecastModel.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weather = new List<Weather>();
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
    base = json['base'];
    main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
    clouds =
    json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.coord != null) {
      data['coord'] = this.coord.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    data['base'] = this.base;
    if (this.main != null) {
      data['main'] = this.main.toJson();
    }
    data['visibility'] = this.visibility;
    if (this.wind != null) {
      data['wind'] = this.wind.toJson();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds.toJson();
    }
    data['dt'] = this.dt;
    if (this.sys != null) {
      data['sys'] = this.sys.toJson();
    }
    data['timezone'] = this.timezone;
    data['id'] = this.id;
    data['name'] = this.name;
    data['cod'] = this.cod;
    return data;
  }
}

class Coord {
  double lon;
  double lat;

  Coord({this.lon, this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    return data;
  }
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Main {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;

  Main(
      {this.temp,
        this.feelsLike,
        this.tempMin,
        this.tempMax,
        this.pressure,
        this.humidity});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['temp_min'] = this.tempMin;
    data['temp_max'] = this.tempMax;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    return data;
  }
}

class Wind {
  double speed;
  int deg;
  double gust;

  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    data['deg'] = this.deg;
    data['gust'] = this.gust;
    return data;
  }
}

class Clouds {
  int all;

  Clouds({this.all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    return data;
  }
}

class Sys {
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;

  Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    data['country'] = this.country;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    return data;
  }
}