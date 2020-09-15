import 'package:flutter/material.dart';
import 'package:flutter_reversi/core/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController _controller;

  CustomTextField(this._controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
        key: Key("input"),
        controller: _controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: TEXT_INPUT));
  }
}
