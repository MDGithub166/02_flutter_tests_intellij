import 'package:flutter/material.dart';
import 'package:flutter_reversi/core/app_widget_keys.dart';
import 'package:flutter_reversi/pages_modules/service/service.dart';

import '../core/app_texts.dart';
import 'components/text_field.dart';
import 'components/text_result.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  TextEditingController _controller;
  String _reversed;
  Service _service = Service();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(APPBAR_TITLE)),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomTextField(_controller),
                const SizedBox(height: 10.0),
                if (_reversed != null) ...[
                  TextResult(_reversed),
                  const SizedBox(height: 10.0)
                ],
                RaisedButton(
                    key: Key(V003),
                    child: Text(LABEL_BUTTON),
                    onPressed: () {
                      if (_controller.text.isEmpty) return;
                      setState(() {
                        _reversed = _service.reverser(_controller.text);
                      });
                    })
              ])),
    );
  }
}
