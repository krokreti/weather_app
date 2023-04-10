import 'package:flutter/material.dart';

import '../widget/weather/weather_search_bar.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-place';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a Place'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [WeatherSearchBar()])),
    );
  }
}
