import 'package:flutter/material.dart';
import 'package:flutter_reversi/core/app_widget_keys.dart';

class TextResult extends StatelessWidget {

  final String _reversed;

  TextResult(this._reversed);

  @override
  Widget build(BuildContext context) {
    return Text(
      _reversed,
      key: Key(V002),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }
}
