// weather_model.dart
class WeatherModel2 {
  final String cityName;   // city name (e.g., London)
  final double temperature; // temperature in Kelvin
  final int humidity;      // humidity %
  final String description; // weather description (e.g., overcast clouds)

  // Constructor (to create an object of WeatherModel)
  WeatherModel2({
    required this.cityName,
    required this.temperature,
    required this.humidity,
    required this.description,
  });

  // Factory constructor to create WeatherModel from JSON
  factory WeatherModel2.fromJson(Map<String, dynamic> json) {
    return WeatherModel2(
      cityName: json['name'],                        // take "London"
      temperature: json['main']['temp'].toDouble(), // take "temp"
      humidity: json['main']['humidity'],           // take "humidity"
      description: json['weather'][0]['description'], // take "overcast clouds"
    );
  }
}
