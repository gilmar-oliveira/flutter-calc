import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final int flex;

  Button([this.text, this.flex = 1]);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: RaisedButton(
        onPressed: () {},
        child: Text(this.text),
      ),
    );
  }
}
