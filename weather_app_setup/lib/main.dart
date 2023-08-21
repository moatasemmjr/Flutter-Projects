import 'package:flutter/material.dart';
import 'package:weather_app_setup/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'Provider/WeatherProvider.dart';
import 'model/weather_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return WeatherProvider();
      },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key);
  WeatherModel? dataw;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null
            ? Colors.blue
            : Provider.of<WeatherProvider>(context)
                .weatherData!
                .getThemeColor(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
