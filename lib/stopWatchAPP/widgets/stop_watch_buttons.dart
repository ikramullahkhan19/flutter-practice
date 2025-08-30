import 'package:flutter/material.dart';
import 'package:flutterpractice/stopWatchAppProvider/utils/stopwatch_provider.dart';
import 'package:provider/provider.dart';

class StopwatchButtons extends StatelessWidget {


  const StopwatchButtons({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Consumer<StopWatchProvider>(
      builder: (context,stopWatchProvider,child){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: stopWatchProvider.startTimer,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Start',style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: stopWatchProvider.pauseTimer,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Pause',style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: stopWatchProvider.resetTimer,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              child: const Text('Reset',style: TextStyle(color: Colors.white),),
            ),
          ],
        );

      },

    );
  }
}
