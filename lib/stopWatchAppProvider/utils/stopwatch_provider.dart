import 'dart:async';

import 'package:flutter/foundation.dart';

class StopWatchProvider with ChangeNotifier {
  int _elapsedSeconds = 0;
  int get elapsedSeconds => _elapsedSeconds;
  Timer? _timer;
  Timer? get timer => _timer;
  bool _isRunning = false;
  bool get isRunning => _isRunning;

  void startTimer() {
    if (!isRunning) {
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        _elapsedSeconds++;
        notifyListeners();
      });

      _isRunning = true;
      notifyListeners();
    }
  }

  void pauseTimer() {
    _timer?.cancel();

    _isRunning = false;
    notifyListeners();
  }

  void resetTimer() {
    timer?.cancel();

    _elapsedSeconds = 0;
    _isRunning = false;
    notifyListeners();
  }
}
