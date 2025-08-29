import 'package:flutter/material.dart';
import 'package:flutterpractice/imageViewerFullScreen/imageViewerFullScreenwithprovider/image_screen.dart';
class Splash1Screen extends StatefulWidget {
  const Splash1Screen({super.key});

  @override
  State<Splash1Screen> createState() => _Splash1ScreenState();
}

class _Splash1ScreenState extends State<Splash1Screen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration (seconds: 3),
        (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ImageScreen()));

        }
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Icon(Icons.image,size: 100,color: Colors.green,),
      ),
    );
  }
}
