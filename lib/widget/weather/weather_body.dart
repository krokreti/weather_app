import 'package:flutter/material.dart';
import '../../theme/my_text_theme.dart';

class WeatherBody extends StatelessWidget {
  final double tempC;
  final String imageUrl;
  const WeatherBody({super.key, required this.tempC, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              tempC.toStringAsFixed(0),
              style: myTextTheme.titleLarge1,
            ),
            Text(
              '°C',
              style: myTextTheme.subtitleLarge,
            ),
          ],
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: FittedBox(
            child: Image.network(
              'https:$imageUrl',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
