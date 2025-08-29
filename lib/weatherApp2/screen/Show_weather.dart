import 'package:flutter/material.dart';
import 'package:flutterpractice/weatherApp2/model/model.dart';
import 'package:weather_icons/weather_icons.dart';

class ShowWeather extends StatelessWidget {
  final WeatherModel2 weather;

  const ShowWeather({super.key, required this.weather});

  Icon getWeatherIcon(String description) {
    if (description.contains('cloud')) {
      return const Icon(WeatherIcons.cloud, size: 60, color: Colors.white);
    } else if (description.contains('rain')) {
      return Icon(WeatherIcons.rain, size: 60, color: Colors.blue.shade200);
    } else if (description.contains('clear')) {
      return const Icon(WeatherIcons.day_sunny,
          size: 60, color: Colors.yellowAccent);
    } else if (description.contains('snow')) {
      return const Icon(WeatherIcons.snow, size: 60, color: Colors.white70);
    } else {
      return Icon(Icons.wb_cloudy, size: 60, color: Colors.grey.shade300);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text("Weather Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 250,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlueAccent.shade100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.4),
                  blurRadius: 10,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  weather.cityName,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 12),
                getWeatherIcon(weather.description),
                const SizedBox(height: 12),
                Text(
                  "${weather.temperature} °C",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  weather.description.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
