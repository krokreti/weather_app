import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../widget/weather_card.dart';
import '../widget/welcome_widget.dart';
import '../provider/weather_provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  Future<void> _refreshWeather(BuildContext context) async {
    await Provider.of<WeatherProvider>(context, listen: false).fetchData();
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double appBarHeight = AppBar().preferredSize.height;
    final double availableHeight =
        MediaQuery.of(context).size.height - statusBarHeight - appBarHeight;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.cloudy_snowing),
        title: const Text('Weather Now'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // drawer: const DrawerWidget(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: FutureBuilder(
        future: _refreshWeather(context),
        // Provider.of<WeatherProvider>(context, listen: false).fetchData(),
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : RefreshIndicator(
                    onRefresh: () => _refreshWeather(context),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: availableHeight,
                        ),
                        child: Consumer<WeatherProvider>(
                          builder: (context, weatherData, child) => Column(
                            children: [
                              WelcomeWidget(isDay: weatherData.weather.isDay),
                              WeatherCard(
                                tempC: weatherData.weather.tempC,
                                imageUrl: weatherData.weather.conditionIcon,
                                locationName: weatherData.weather.locationName,
                                locationCountry:
                                    weatherData.weather.locationCountry,
                                locationTime: weatherData.weather.locationTime,
                                dailyChanceOfRain:
                                    weatherData.weather.dailyChanceOfRain,
                                humidity: weatherData.weather.humidity,
                                wind: weatherData.weather.wind,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
