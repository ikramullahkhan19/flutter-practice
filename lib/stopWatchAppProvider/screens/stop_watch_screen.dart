import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterpractice/stopWatchAPP/widgets/stop_watch_buttons.dart';
import '../utils/time_formatter.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  int elapsedSeconds = 0;
  Timer? timer;
  bool isRunning = false;

  void startTimer() {
    if (!isRunning) {
      timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        setState(() {
          elapsedSeconds++;
        });
      });
      setState(() {
        isRunning = true;
      });
    }
  }

  void pauseTimer() {
    timer?.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      elapsedSeconds = 0;
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stop Watch',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,

            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blueAccent[700]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    formatTime(elapsedSeconds),
                    style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: StopwatchButtons(
              onStart: startTimer,
              onPause: pauseTimer,
              onReset: resetTimer,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
