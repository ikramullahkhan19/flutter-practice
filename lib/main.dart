


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractice/Bottom%20Navigation%20Bar%20App/navigation_controller.dart';
import 'package:flutterpractice/Bottom%20Navigation%20Bar%20App/splash_screen.dart';
import 'package:flutterpractice/Form_validation_App/screens/form_screen.dart';
import 'package:flutterpractice/Form_validation_App/screens/form_splash_screen.dart';
import 'package:flutterpractice/calculatorApp/screen/cal_screen.dart';
import 'package:flutterpractice/calculatorApp/screen/cal_splash_screen.dart';
import 'package:flutterpractice/drawerApp/drawer.dart';
import 'package:flutterpractice/imageViewerFullScreen/gallery_screen.dart';
import 'package:flutterpractice/imageViewerFullScreen/imageViewerFullScreenwithprovider/image_provider.dart';
import 'package:flutterpractice/imageViewerFullScreen/imageViewerFullScreenwithprovider/image_screen.dart';
import 'package:flutterpractice/imageViewerFullScreen/imageViewerFullScreenwithprovider/splash1_screen.dart';
import 'package:flutterpractice/movieApp/withProvider/movie_list_screen_p.dart';
import 'package:flutterpractice/movieApp/withProvider/movie_provider.dart';
import 'package:flutterpractice/provider/todo_list_provider.dart';
import 'package:flutterpractice/stopWatchAPP/screens/stop_watch_screen.dart';
import 'package:flutterpractice/stopWatchAppProvider/utils/stopwatch_provider.dart';
import 'package:flutterpractice/weatherApp2/screen/w_screen.dart';
import 'package:flutterpractice/weatherApp2/screen/weather_splash_screen.dart';
import 'package:flutterpractice/whatApp/chat_list_screen.dart';
import 'package:flutterpractice/whatApp/chat_screen.dart';
import 'package:flutterpractice/whatApp/whatsApp_splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>TodoListProvider()),
      ChangeNotifierProvider(create: (_)=>MovieProvider()),
      ChangeNotifierProvider(create: (_)=>GalleryProvider()),
      ChangeNotifierProvider(create: (_)=>StopWatchProvider()),




    ],
      child: const MyApp(),
    )



  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
        // This works for code too, not just values: Most code chang,
      ),
      home:StopWatchScreenP(),
    );
  }
}
