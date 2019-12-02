import 'package:flutter/material.dart';

import 'package:counter/src/pages/counter_page.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}