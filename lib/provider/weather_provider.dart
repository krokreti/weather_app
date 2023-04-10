import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/weather.dart';

class WeatherProvider with ChangeNotifier {
  Weather _weather = Weather(
    locationName: '',
    locationRegion: '',
    locationCountry: '',
    locationTime: DateTime.now(),
    tempC: 0,
    feelsLikeC: 0,
    conditionText: '',
    conditionIcon: '',
    isDay: 0,
    humidity: 0,
    cloud: 0,
    wind: 0,
    dailyWillItRain: 0,
    dailyChanceOfRain: 0,
    dailyWillItSnow: 0,
    dailyChanceOfSnow: 0,
    maxTempC: 0,
    minTempC: 0,
    avgTempC: 0,
    astroSunrise: '',
    astroSunset: '',
    astroMoonrise: '',
    astroMoonset: '',
  );
  // Weather _weather;

  Weather get weather {
    return _weather;
  }

  Future<void> fetchData([String location = 'rio de janeiro']) async {
    final url = Uri.parse(
        'http://api.weatherapi.com/v1/forecast.json?key=5191a41297434402882163742230604&q=${location}&days=1&aqi=no&alerts=no');
    try {
      final response = await http.get(url);
      // print(json.decode(response.body));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }

      _weather = Weather.fromJson(extractedData);
      print(_weather.conditionIcon);
      print(_weather.isDay);

      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
