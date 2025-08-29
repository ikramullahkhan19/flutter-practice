import 'package:flutter/material.dart';
import 'package:flutterpractice/Form_validation_App/screens/form_screen.dart';

class FormSplashScreen extends StatefulWidget {
  const FormSplashScreen({super.key});

  @override
  State<FormSplashScreen> createState() => _FormSplashScreenState();
}

class _FormSplashScreenState extends State<FormSplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FormScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(
          Icons.account_circle,
          size: 80,
          color: Colors.white,
        )
        ,
      ),
    );
  }
}
