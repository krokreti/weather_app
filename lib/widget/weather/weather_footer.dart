import 'package:flutter/material.dart';
import '../../theme/my_text_theme.dart';

class WeatherFooter extends StatelessWidget {
  final String locationName;
  final String locationCountry;
  final double wind;
  final int dailyChanceOfRain;
  final int humidity;
  const WeatherFooter({
    super.key,
    required this.locationName,
    required this.locationCountry,
    required this.wind,
    required this.dailyChanceOfRain,
    required this.humidity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(Icons.air_outlined, color: Colors.white, size: 35),
                Text('${wind.toStringAsFixed(0)} km/h',
                    style: myTextTheme.labelSmall1),
                Text('Wind', style: myTextTheme.goldLabelMini),
              ],
            ),
            Column(
              children: [
                const Icon(Icons.cloudy_snowing, color: Colors.white, size: 35),
                Text('${dailyChanceOfRain}%', style: myTextTheme.labelSmall1),
                Text('Chance of Rain', style: myTextTheme.goldLabelMini),
              ],
            ),
            Column(
              children: [
                const Icon(Icons.water_drop, color: Colors.white, size: 35),
                Text('${humidity}%', style: myTextTheme.labelSmall1),
                Text('Humidity', style: myTextTheme.goldLabelMini),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.amber,
            ),
            Text(
              "$locationName -",
              style: myTextTheme.goldLabelSmall,
            ),
            Text(
              " $locationCountry",
              style: myTextTheme.labelSmall1,
            )
          ],
        ),
      ],
    );
  }
}
