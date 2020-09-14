import 'package:flutter/material.dart';

class TextResult extends StatelessWidget {

  final String _reversed;

  TextResult(this._reversed);

  @override
  Widget build(BuildContext context) {
    return Text(
      _reversed,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }
}
