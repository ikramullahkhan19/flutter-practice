import 'package:flutter/material.dart';
import 'package:flutterpractice/Bottom%20Navigation%20Bar%20App/home_screen.dart';
import 'package:flutterpractice/Bottom%20Navigation%20Bar%20App/profile_screen.dart';
import 'package:flutterpractice/Bottom%20Navigation%20Bar%20App/search_screen.dart';
class NavigationController extends StatefulWidget {
  const NavigationController({super.key});

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {
  int currentIndex=0;
  final screens=[HomeScreen(),SearchScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label:'Home',icon: Icon(Icons.home,)),
          BottomNavigationBarItem(label:'Search',icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:'Profile',icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
