import 'package:flutter/material.dart';
import 'package:flutterpractice/provider/color_changer_provider.dart';
import 'package:provider/provider.dart';

class ColorChangerWithProvider extends StatelessWidget {
  const ColorChangerWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorChanger'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Consumer<ColorChangerProvider>(
        builder: (context, value, child) {
          return Container(
            color: value.backgroundColor, // Only this part rebuilds
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.change_circle),
                    onPressed: () {
                      value.changeColor(); // Changes background color
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
