import 'package:flutter/material.dart';
import 'dart:math';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorChanger'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                child: Icon(Icons.change_circle),
                onPressed: () {
                  setState(() {
                    int r = Random().nextInt(256);
                    int g = Random().nextInt(256);
                    int b = Random().nextInt(256);

                    backgroundColor = Color.fromRGBO(r, g, b, 1);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
