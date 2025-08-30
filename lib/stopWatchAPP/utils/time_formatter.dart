// utils/time_formatter.dart
String formatTime(int seconds) {
  final hours = seconds ~/ 3600;
  final minutes = (seconds % 3600) ~/ 60;
  final secs = seconds % 60;
  final hoursStr = hours.toString().padLeft(2, '0');
  final minutesStr = minutes.toString().padLeft(2, '0');
  final secondsStr = secs.toString().padLeft(2, '0');
  return "$hoursStr:$minutesStr:$secondsStr";
}
