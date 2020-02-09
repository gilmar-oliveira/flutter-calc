import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meuapp/business/calculator_logic.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final CalculatorLogic logic = CalculatorLogic();

  _onPressed(String command) {
    print(command);
    setState(() {
      logic.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
        home: Column(children: <Widget>[
      Display(logic.value),
      Keyboard(_onPressed),
    ]));
  }
}
