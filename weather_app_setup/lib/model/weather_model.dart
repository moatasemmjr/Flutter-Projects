import 'package:flutter/material.dart';

class WeatherModel {
  String date;
  double temp;
  double maxtemp;
  double mintemp;
  String statename;
  WeatherModel({
    required this.date,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.statename,
  });

  factory WeatherModel.fromJSON(dynamic datajson) {
    var urldata = datajson['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: datajson['location']['localtime'],
        temp: urldata['avgtemp_c'],
        maxtemp: urldata['maxtemp_c'],
        mintemp: urldata['mintemp_c'],
        statename: urldata['condition']['text']);
  }

  @override
  String toString() {
    return 'date $date , temp : $temp , mintemp : $mintemp ';
  }

  String getImage() {
    if (statename == 'Sunny' ||
        statename == 'Clear' ||
        statename == 'partly cloudy') {
      return 'assets/images/clear.png';
    } else if (statename == 'Blizzard' ||
        statename == 'Patchy snow possible' ||
        statename == 'Patchy sleet possible' ||
        statename == 'Patchy freezing drizzle possible' ||
        statename == 'Blowing snow') {
      return 'assets/images/snow.png';
    } else if (statename == 'Freezing fog' ||
        statename == 'Fog' ||
        statename == 'Heavy Cloud' ||
        statename == 'Mist' ||
        statename == 'Fog') {
      return 'assets/images/cloudy.png';
    } else if (statename == 'Patchy rain possible' ||
        statename == 'Heavy Rain' ||
        statename == 'Showers	') {
      return 'assets/images/rainy.png';
    } else if (statename == 'Thundery outbreaks possible' ||
        statename == 'Moderate or heavy snow with thunder' ||
        statename == 'Patchy light snow with thunder' ||
        statename == 'Moderate or heavy rain with thunder' ||
        statename == 'Patchy light rain with thunder') {
      return 'assets/images/thunderstorm.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

  MaterialColor getThemeColor() {
    if (statename == 'Sunny' ||
        statename == 'Clear' ||
        statename == 'partly cloudy') {
      return Colors.orange;
    } else if (statename == 'Blizzard' ||
        statename == 'Patchy snow possible' ||
        statename == 'Patchy sleet possible' ||
        statename == 'Patchy freezing drizzle possible' ||
        statename == 'Blowing snow') {
      return Colors.blue;
    } else if (statename == 'Freezing fog' ||
        statename == 'Fog' ||
        statename == 'Heavy Cloud' ||
        statename == 'Mist' ||
        statename == 'Fog') {
      return Colors.blueGrey;
    } else if (statename == 'Patchy rain possible' ||
        statename == 'Heavy Rain' ||
        statename == 'Showers	') {
      return Colors.blue;
    } else if (statename == 'Thundery outbreaks possible' ||
        statename == 'Moderate or heavy snow with thunder' ||
        statename == 'Patchy light snow with thunder' ||
        statename == 'Moderate or heavy rain with thunder' ||
        statename == 'Patchy light rain with thunder') {
      return Colors.deepPurple;
    } else {
      return Colors.orange;
    }
  }
}
