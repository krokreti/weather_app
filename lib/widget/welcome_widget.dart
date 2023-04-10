import 'package:flutter/material.dart';
import '../theme/my_text_theme.dart';

class WelcomeWidget extends StatelessWidget {
  final int isDay;
  const WelcomeWidget({super.key, required this.isDay});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: isDay == 0
          ? SizedBox(
              height: 50,
              child: Row(
                children: [
                  Text(
                    'Hi, good evening!',
                    textAlign: TextAlign.start,
                    style: myTextTheme.labelMedium1,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Icon(
                      Icons.nights_stay,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          : SizedBox(
              height: 50,
              child: Row(
                children: [
                  Text(
                    'Have a nice day!',
                    textAlign: TextAlign.start,
                    style: myTextTheme.labelMedium1,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Icon(
                      Icons.sunny,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
