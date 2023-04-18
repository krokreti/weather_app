import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/weather_provider.dart';
import '../model/weather.dart';
import '../theme/my_text_theme.dart';

import '../widget/weather/weather_localization.dart';
import '../widget/detailed_weather/detailed_image.dart';

class DetailedWeatherScreen extends StatelessWidget {
  static const routeName = '/detailed-weather';
  // final String imageUrl;
  const DetailedWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Weather weather =
        Provider.of<WeatherProvider>(context, listen: false).weather;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Now'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WeatherLocalization(
                locationName: weather.locationName,
                locationCountry: weather.locationCountry),
            DetailedImage(
                imageUrl: weather.conditionIcon,
                conditionText: weather.conditionText),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Colors.deepPurple, Colors.blueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Text('AAAAAAAAAAAAAAA'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Colors.deepPurple, Colors.blueAccent],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: Text('AAAAAAAAAAAAAAA'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
