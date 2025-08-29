import 'package:flutter/material.dart';
import 'package:flutterpractice/whatApp/chat_list_screen.dart';
import 'package:flutterpractice/whatApp/chat_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class WhatsAppSplashScreen extends StatefulWidget {

  const WhatsAppSplashScreen({super.key});

  @override
  State<WhatsAppSplashScreen> createState() => _WhatsAppSplashScreenState();
}

class _WhatsAppSplashScreenState extends State<WhatsAppSplashScreen> {
  @override
  void initState() {
    super.initState();  // always call super.initState()

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatListScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(FontAwesomeIcons.whatsapp,size: 80,color: Colors.white,),
      ),
    );
  }
}
