import 'package:flutter/material.dart';

import 'package:counter/src/pages/counter_page.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent
      ),
      home: CounterPage(),
    );
  }
}