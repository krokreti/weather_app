import 'package:flutter/material.dart';
import '../../theme/my_text_theme.dart';

class WeatherLocalization extends StatelessWidget {
  final String locationName;
  final String locationCountry;
  const WeatherLocalization(
      {super.key, required this.locationName, required this.locationCountry});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
