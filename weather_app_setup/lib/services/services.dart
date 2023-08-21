import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_setup/model/weather_model.dart';

class Weatherservices {
  String baseurl = "http://api.weatherapi.com/v1";
  String keyid = "47f11bbb0bcb4767b22151357230908";

  Future<WeatherModel> getWeather(String cityname) async {
    Uri url = Uri.parse(
        '$baseurl/forecast.json?key=$keyid&q=$cityname&days=1&aqi=no&alerts=no');
    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel wdata = WeatherModel.fromJSON(data);

    return wdata;
  }
}

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:weather_app_setup/model/weather_model.dart';

// class Weatherservices {
//   String baseurl = "http://api.weatherapi.com/v1";
//   String keyid = "47f11bbb0bcb4767b22151357230908";

//   Future<WeatherModel> getWeather(String cityname) async {
//     try {
//       Uri url = Uri.parse(
//           '$baseurl/forecast.json?key=$keyid&q=$cityname&days=1&aqi=no&alerts=no');
//       http.Response response = await http.get(url);

//       if (response.statusCode == 200) {
//         Map<String, dynamic> data = jsonDecode(response.body);
//         WeatherModel wdata = WeatherModel.fromJSON(data);
//         return wdata;
//       } else {
//         throw Exception('Failed to fetch weather data');
//       }
//     } catch (e) {
//       // Handle exceptions
//       print('An exception occurred: $e');
//       rethrow; // Rethrow the exception for higher-level handling
//     }
//   }
// }
