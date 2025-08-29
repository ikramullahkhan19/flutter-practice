import 'package:flutter/material.dart';
import 'package:flutterpractice/weatherApp2/model/model.dart';
import 'package:flutterpractice/weatherApp2/screen/Show_weather.dart';
import 'package:flutterpractice/weatherApp2/service/w_service.dart';

class WScreen extends StatefulWidget {
  const WScreen({super.key});

  @override
  State<WScreen> createState() => _WScreenState();
}

class _WScreenState extends State<WScreen> {
  final WeatherService _weatherService = WeatherService();
  WeatherModel2? _weather;
  final TextEditingController _controller = TextEditingController();

  Future<void> getWeather() async {
    final city = _controller.text.trim();
    if (city.isEmpty) return; // avoid crash
    final weather = await _weatherService.getWeather2(city);
    setState(() {
      _weather = weather;
    });

    // Navigate only if weather is fetched
    if (_weather != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShowWeather(weather: _weather!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _controller,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade900,
                  hintText: "Enter city",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  prefixIcon:
                  const Icon(Icons.location_city, color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 6,
                backgroundColor: Colors.blueAccent,
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: getWeather,
              child: const Text(
                "Get Weather",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
