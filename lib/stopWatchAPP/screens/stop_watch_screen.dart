import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterpractice/stopWatchAPP/widgets/stop_watch_buttons.dart';
import 'package:flutterpractice/stopWatchAppProvider/utils/stopwatch_provider.dart';
import 'package:provider/provider.dart';
import '../utils/time_formatter.dart';

class StopWatchScreenP extends StatefulWidget {
  const StopWatchScreenP({super.key});

  @override
  State<StopWatchScreenP> createState() => _StopWatchScreenPState();
}

class _StopWatchScreenPState extends State<StopWatchScreenP> {


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
                  child: Consumer<StopWatchProvider>(
                    builder: (context,stopWatchProvider,child){
                      return  Text(
                      formatTime(stopWatchProvider.elapsedSeconds),
                      style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.white),
                      );
                    },

                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: StopwatchButtons(
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
