import 'package:math_expressions/math_expressions.dart';

class CalculatorLogic {
  String input = "";      // Stores the current expression
  String result = "";     // Stores the last calculated result
  bool lastPressedEqual = false;  // Flag to track if last pressed '='

  // Add number/operator to input
  void addInput(String value) {
    if (lastPressedEqual) {
      // If last pressed '=', decide how to continue
      if ('0123456789.'.contains(value)) {
        // Start a new input if a number is pressed
        input = value;
      } else {
        // Continue calculation if an operator is pressed
        input = result + value;
      }
      lastPressedEqual = false;
    } else {
      input += value;
    }
  }

  // Clear input and result
  void clear() {
    input = "";
    result = "";
    lastPressedEqual = false;
  }

  // Delete last character
  void delete() {
    if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
    }
  }

  // Calculate result
  void calculate() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(input.replaceAll('x', '*')); // replace x with *
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result = eval.toString();
      lastPressedEqual = true; // mark that '=' was pressed
    } catch (e) {
      result = 'Error';
      lastPressedEqual = true;
    }
  }

  // Getters
  String getInput() => input;
  String getResult() => result;
}
