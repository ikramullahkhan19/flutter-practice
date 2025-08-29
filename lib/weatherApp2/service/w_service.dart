import 'dart:convert';
import 'package:flutterpractice/weatherApp2/model/model.dart';
import 'package:http/http.dart' as http;

class WeatherService{
  final key="c7b37e7fb4fb6441967411adb443da54";
  Future<WeatherModel2?> getWeather2(String city) async{
    final url="https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$key&units=metric";

    final response=await http.get(Uri.parse(url));

    if(response.statusCode==200){
      final data=jsonDecode(response.body);
      return WeatherModel2.fromJson(data);
    }else {
      return null;
    }

  }
}