import 'package:flutter/material.dart';
import 'package:weather_app_setup/services/services.dart';
import 'package:provider/provider.dart';
import '../Provider/WeatherProvider.dart';
import '../model/weather_model.dart';

class search extends StatelessWidget {
  search({this.updateurl});

  VoidCallback? updateurl;
  String? cityname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("search"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              onSubmitted: (value) async {
                cityname = value;
                Weatherservices s = Weatherservices();
                WeatherModel Weather = await s.getWeather(value);
                // dataWeather = Weather;
                Provider.of<WeatherProvider>(context, listen: false)
                    .weatherData = Weather;
                // updateurl!();
                Navigator.pop(context);
                // print(Weather.toString());
              },
              decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  suffixIcon: Icon(Icons.search),
                  // icon: Icon(Icons.search),
                  hintText: ("enter the city name"),
                  labelText: "search",
                  border: OutlineInputBorder()),
            ),
          ),
        ));
  }
}

// WeatherModel? dataWeather;
