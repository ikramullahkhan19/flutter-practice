import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier{
  int _counter=0;
  int get counter=>_counter;

   increment(){
    _counter++;

    notifyListeners();

  }
   decrement(){
    _counter--;

    notifyListeners();

  }
   reset(){
    _counter=0;

    notifyListeners();

  }

}