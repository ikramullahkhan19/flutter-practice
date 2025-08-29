import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorChangerProvider with ChangeNotifier{
  Color _backgroundColor=Colors.white;
  Color get backgroundColor=>_backgroundColor;

  void changeColor(){
    int r = Random().nextInt(256);
    int g = Random().nextInt(256);
    int b = Random().nextInt(256);

    _backgroundColor = Color.fromRGBO(r, g, b, 1);
    notifyListeners();
  }



}