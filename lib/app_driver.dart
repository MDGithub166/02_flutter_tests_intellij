import 'package:flutter/material.dart';

import 'core/app_texts.dart';
import 'pages_modules/view.dart';

class AppDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: View(),
    );
  }
}
