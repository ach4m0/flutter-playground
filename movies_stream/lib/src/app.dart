import 'package:flutter/material.dart';

import 'package:movies_stream/src/pages/home_page.dart';
 
class MoviesStreamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popular movies',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}