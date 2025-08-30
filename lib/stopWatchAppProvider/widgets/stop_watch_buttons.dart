import 'package:flutter/material.dart';

class StopwatchButtons extends StatelessWidget {
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onReset;

  const StopwatchButtons({
    super.key,
    required this.onStart,
    required this.onPause,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: onStart,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: const Text('Start',style: TextStyle(color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: onPause,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text('Pause',style: TextStyle(color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: onReset,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          child: const Text('Reset',style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}
