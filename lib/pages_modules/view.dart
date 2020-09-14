import 'package:flutter/material.dart';
import 'file:///C:/Users/SERVIDOR/Projects/flutter_reversi-master/lib/pages_modules/components/text_field.dart';
import 'file:///C:/Users/SERVIDOR/Projects/flutter_reversi-master/lib/pages_modules/components/text_result.dart';
import 'file:///C:/Users/SERVIDOR/Projects/flutter_reversi-master/lib/pages_modules/service.dart';

import '../core/constants.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  TextEditingController _controller;
  String _reversed;

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
                    child: Text(LABEL_BUTTON),
                    onPressed: () {
                      if (_controller.text.isEmpty) return;
                      setState(() {
                        _reversed = reverser(_controller.text);
                      });
                    })
              ])),
    );
  }
}
