import 'dart:convert';

class Weather {
  final String locationName;
  final String locationRegion;
  final String locationCountry;
  final DateTime locationTime;
  final double tempC;
  final double feelsLikeC;
  final String conditionText;
  final String conditionIcon;
  final int isDay;
  final int humidity;
  final int cloud;
  final double wind;
  final int dailyWillItRain;
  final int dailyChanceOfRain;
  final int dailyWillItSnow;
  final int dailyChanceOfSnow;
  final double maxTempC;
  final double minTempC;
  final double avgTempC;
  final String astroSunrise;
  final String astroSunset;
  final String astroMoonrise;
  final String astroMoonset;

  Weather({
    required this.locationName,
    required this.locationRegion,
    required this.locationCountry,
    required this.locationTime,
    required this.tempC,
    required this.feelsLikeC,
    required this.conditionText,
    required this.conditionIcon,
    required this.isDay,
    required this.humidity,
    required this.cloud,
    required this.wind,
    required this.dailyWillItRain,
    required this.dailyChanceOfRain,
    required this.dailyWillItSnow,
    required this.dailyChanceOfSnow,
    required this.maxTempC,
    required this.minTempC,
    required this.avgTempC,
    required this.astroSunrise,
    required this.astroSunset,
    required this.astroMoonrise,
    required this.astroMoonset,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      locationName: json['location']['name'],
      locationRegion: json['location']['region'],
      locationCountry: json['location']['country'],
      locationTime: DateTime.now(),
      tempC: json['current']['temp_c'],
      feelsLikeC: json['current']['feelslike_c'],
      conditionText: json['current']['condition']['text'],
      conditionIcon: json['current']['condition']['icon'],
      isDay: json['current']['is_day'],
      humidity: json['current']['humidity'],
      cloud: json['current']['cloud'],
      wind: json['current']['wind_kph'],
      dailyWillItRain: json['forecast']['forecastday'][0]['day']
          ['daily_will_it_rain'],
      dailyChanceOfRain: json['forecast']['forecastday'][0]['day']
          ['daily_chance_of_rain'],
      dailyWillItSnow: json['forecast']['forecastday'][0]['day']
          ['daily_will_it_snow'],
      dailyChanceOfSnow: json['forecast']['forecastday'][0]['day']
          ['daily_chance_of_snow'],
      maxTempC: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTempC: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      avgTempC: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      astroSunrise: json['forecast']['forecastday'][0]['astro']['sunrise'],
      astroSunset: json['forecast']['forecastday'][0]['astro']['sunset'],
      astroMoonrise: json['forecast']['forecastday'][0]['astro']['moonrise'],
      astroMoonset: json['forecast']['forecastday'][0]['astro']['moonset'],
    );
  }
}
