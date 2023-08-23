import 'package:flutter/material.dart';
import 'package:weather_app_setup/model/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? _weatherData;

  set weatherData(WeatherModel? Weather) {
    _weatherData = Weather;
    notifyListeners(); // Notify listeners when the data changes
  }

  WeatherModel? get weatherData => _weatherData;
}
