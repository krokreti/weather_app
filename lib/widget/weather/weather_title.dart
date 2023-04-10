import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../theme/my_text_theme.dart';

class WeatherTitle extends StatelessWidget {
  final String locationTime;
  const WeatherTitle({super.key, required this.locationTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Today\'s Report',
          style: myTextTheme.labelLarge1,
        ),
        Text(
          locationTime,
          style: myTextTheme.labelSmall1,
        ),
      ],
    );
  }
}
