import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './weather/weather_title.dart';
import './weather/weather_body.dart';
import './weather/weather_footer.dart';
import './weather/weather_localization.dart';
import '../screen/detailed_weather_screen.dart';

class WeatherCard extends StatelessWidget {
  final double tempC;
  final String imageUrl;
  final String locationName;
  final String locationCountry;
  final DateTime locationTime;
  final int humidity;
  final int dailyChanceOfRain;
  final double wind;
  const WeatherCard({
    super.key,
    required this.tempC,
    required this.imageUrl,
    required this.locationName,
    required this.locationCountry,
    required this.locationTime,
    required this.humidity,
    required this.dailyChanceOfRain,
    required this.wind,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailedWeatherScreen.routeName);
      },
      child: Card(
        elevation: 5,
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(15),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                WeatherTitle(
                  locationTime: DateFormat.MMMMd().format(locationTime),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: WeatherBody(tempC: tempC, imageUrl: imageUrl),
                ),
                WeatherFooter(
                  wind: wind,
                  dailyChanceOfRain: dailyChanceOfRain,
                  humidity: humidity,
                ),
                WeatherLocalization(
                  locationName: locationName,
                  locationCountry: locationCountry,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
