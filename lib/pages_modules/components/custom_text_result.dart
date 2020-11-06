import 'package:flutter/material.dart';
import 'package:flutter_reversi/core/app_widget_keys.dart';

class CustomTextResult extends StatelessWidget {

  final String _reversed;

  CustomTextResult(this._reversed);

  @override
  Widget build(BuildContext context) {
    return Text(
      _reversed,
      key: Key(K02),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }
}
