import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screen/home_screen.dart';
import './screen/detailed_weather_screen.dart';
import './screen/search_screen.dart';
import './provider/weather_provider.dart';
import './theme/my_text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final myTextTheme = MyTextTheme();
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'Weather Now',
        theme: ThemeData(
            backgroundColor: Color.fromRGBO(10, 12, 30, 1),
            // cardColor: Colors.white30,
            cardColor: Colors.white24,
            primaryColor: Colors.white,
            textTheme: myTextTheme),
        home: const HomeScreen(),
        routes: {
          DetailedWeatherScreen.routeName: (context) =>
              const DetailedWeatherScreen(),
          SearchScreen.routeName: (context) => const SearchScreen(),
        },
      ),
    );
  }
}
