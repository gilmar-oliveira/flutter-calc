import 'package:flutter/material.dart';
import 'package:meuapp/components/button.dart';
import 'package:meuapp/components/button_row.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([Button('AC', 2), Button('%'), Button('/')]),
          ButtonRow([Button('7'), Button('8'), Button('9'), Button('x')]),
          ButtonRow([Button('4'), Button('5'), Button('6'), Button('-')]),
          ButtonRow([Button('1'), Button('2'), Button('3'), Button('+')]),
          ButtonRow([Button('0', 2), Button('.'), Button('=')]),
        ],
      ),
    );
  }
}
