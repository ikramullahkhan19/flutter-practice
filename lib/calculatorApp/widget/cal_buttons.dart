import 'package:flutter/material.dart';

enum ButtonType { number, operator, special }

class CalButtons extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final ButtonType type;

  const CalButtons({
    super.key,
    required this.label,
    required this.onTap,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    // Decide button color based on type
    Color backgroundColor;
    Color textColor;

    switch (type) {
      case ButtonType.number:
        backgroundColor = Colors.grey[300]!; // light gray
        textColor = Colors.black;
        break;
      case ButtonType.operator:
        backgroundColor = Colors.orange;
        textColor = Colors.white;
        break;
      case ButtonType.special:
        backgroundColor = Colors.grey;
        textColor = Colors.white;
        break;
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(10),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
