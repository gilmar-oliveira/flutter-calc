import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final int flex;
  final color;
  final void Function(String) cb;

  Button({this.text, this.flex = 1, this.color = DEFAULT, @required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: RaisedButton(
        onPressed: () => cb(text),
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.3, color: Colors.black)),
        color: this.color,
        child: Text(this.text,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w200,
                color: Colors.white)),
      ),
    );
  }
}
