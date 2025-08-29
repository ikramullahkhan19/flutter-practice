import 'package:flutter/material.dart';
import 'package:flutterpractice/weatherApp2/screen/w_screen.dart';
import 'package:flutterpractice/whatApp/chat_list_screen.dart';
import 'package:flutterpractice/whatApp/chat_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_icons/weather_icons.dart';
class WeatherSplashScreen extends StatefulWidget {

  const WeatherSplashScreen({super.key});

  @override
  State<WeatherSplashScreen> createState() => _WeatherSplashScreenState();
}

class _WeatherSplashScreenState extends State<WeatherSplashScreen> {
  @override
  void initState() {
    super.initState();  // always call super.initState()

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(WeatherIcons.cloud,size: 80,color: Colors.white,),
            Text('Weather App',style: TextStyle(fontSize:30,color: Colors.white ,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
