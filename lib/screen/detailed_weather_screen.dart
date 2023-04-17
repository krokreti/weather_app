import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../provider/weather_provider.dart';
import '../model/weather.dart';
import '../theme/my_text_theme.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.amber,
                ),
                Text(
                  "${weather.locationName} -",
                  style: myTextTheme.goldLabelSmall,
                ),
                Text(
                  " ${weather.locationCountry}",
                  style: myTextTheme.labelSmall1,
                )
              ],
            ),
            Hero(
              tag: 'hero-image',
              child: SizedBox(
                width: 200,
                height: 200,
                child: FittedBox(
                  child: Image.network(
                    'https:${weather.conditionIcon}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(weather.conditionText, style: myTextTheme.subtitleLarge),
          ],
        ),
      ),
    );
  }
}
