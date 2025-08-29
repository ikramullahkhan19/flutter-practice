import 'package:flutter/material.dart';
import 'package:flutterpractice/calculatorApp/utils/cal_logic.dart';
import 'package:flutterpractice/calculatorApp/widget/cal_buttons.dart';

class CalScreen extends StatefulWidget {
  const CalScreen({super.key});

  @override
  State<CalScreen> createState() => _CalScreenState();
}

class _CalScreenState extends State<CalScreen> {
  CalculatorLogic calculatorLogic = CalculatorLogic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            //Display area
            flex: 2,
            child: Container(
              color: Colors.black,

              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: Column(
                children: [
                  Text(calculatorLogic.getInput(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text(calculatorLogic.getResult(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              child: GridView.count(
                crossAxisCount: 4,
                padding: EdgeInsets.all(10),
                children: [
                  // First row
                  CalButtons(type: ButtonType.special, label: 'C', onTap: () { setState(() { calculatorLogic.clear(); }); }),
                  CalButtons(type: ButtonType.special, label: 'DEL', onTap: () { setState(() { calculatorLogic.delete(); }); }),
                  CalButtons(type: ButtonType.operator, label: '/', onTap: () { setState(() { calculatorLogic.addInput('/'); }); }),
                  CalButtons(type: ButtonType.operator, label: 'x', onTap: () { setState(() { calculatorLogic.addInput('*'); }); }),

                  // Second row
                  CalButtons(type: ButtonType.number, label: '7', onTap: () { setState(() { calculatorLogic.addInput('7'); }); }),
                  CalButtons(type: ButtonType.number, label: '8', onTap: () { setState(() { calculatorLogic.addInput('8'); }); }),
                  CalButtons(type: ButtonType.number, label: '9', onTap: () { setState(() { calculatorLogic.addInput('9'); }); }),
                  CalButtons(type: ButtonType.operator, label: '-', onTap: () { setState(() { calculatorLogic.addInput('-'); }); }),

                  // Third row
                  CalButtons(type: ButtonType.number, label: '4', onTap: () { setState(() { calculatorLogic.addInput('4'); }); }),
                  CalButtons(type: ButtonType.number, label: '5', onTap: () { setState(() { calculatorLogic.addInput('5'); }); }),
                  CalButtons(type: ButtonType.number, label: '6', onTap: () { setState(() { calculatorLogic.addInput('6'); }); }),
                  CalButtons(type: ButtonType.operator, label: '+', onTap: () { setState(() { calculatorLogic.addInput('+'); }); }),

                  // Fourth row
                  CalButtons(type: ButtonType.number, label: '1', onTap: () { setState(() { calculatorLogic.addInput('1'); }); }),
                  CalButtons(type: ButtonType.number, label: '2', onTap: () { setState(() { calculatorLogic.addInput('2'); }); }),
                  CalButtons(type: ButtonType.number, label: '3', onTap: () { setState(() { calculatorLogic.addInput('3'); }); }),
                  CalButtons(type: ButtonType.special, label: '=', onTap: () { setState(() { calculatorLogic.calculate(); }); }),

                  // Fifth row
                  CalButtons(type: ButtonType.number, label: '0', onTap: () { setState(() { calculatorLogic.addInput('0'); }); }),
                  CalButtons(type: ButtonType.number, label: '.', onTap: () { setState(() { calculatorLogic.addInput('.'); }); }),
                ],
              ),
            )
            ,
          ),
        ],
      ),
    );
  }
}
