import 'package:flutter/material.dart';

class DetailedWeatherScreen extends StatelessWidget {
  static const routeName = '/detailed-weather';
  // final String imageUrl;
  const DetailedWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Now'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(children: [
        Text("Funcionou"),
      ]),
    );
  }
}
