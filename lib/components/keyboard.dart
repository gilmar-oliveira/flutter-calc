import 'package:flutter/material.dart';
import 'package:meuapp/components/button.dart';
import 'package:meuapp/components/button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;
  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button(text: 'AC', flex: 2, color: Button.DARK, cb: cb),
            Button(text: '%', color: Button.DARK, cb: cb),
            Button(text: '/', color: Button.OPERATION, cb: cb)
          ]),
          ButtonRow([
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button(text: 'x', color: Button.OPERATION, cb: cb)
          ]),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button(text: '-', color: Button.OPERATION, cb: cb)
          ]),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button(text: '+', color: Button.OPERATION, cb: cb)
          ]),
          ButtonRow([
            Button(text: '0', flex: 2, cb: cb),
            Button(text: '.', cb: cb),
            Button(text: '=', color: Button.OPERATION, cb: cb)
          ]),
        ],
      ),
    );
  }
}
