import 'package:flutter/material.dart';
import 'package:flutterpractice/calculatorApp/screen/cal_screen.dart';
import 'package:flutterpractice/whatApp/chat_list_screen.dart';
import 'package:flutterpractice/whatApp/chat_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CalSplashScreen extends StatefulWidget {

  const CalSplashScreen({super.key});

  @override
  State<CalSplashScreen> createState() => _CalSplashScreenState();
}

class _CalSplashScreenState extends State<CalSplashScreen> {
  @override
  void initState() {
    super.initState();  // always call super.initState()

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CalScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(FontAwesomeIcons.calculator,size: 80,color: Colors.white,),
      ),
    );
  }
}
