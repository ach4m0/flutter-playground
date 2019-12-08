import 'package:flutter/material.dart';

import 'package:animated_container/src/pages/animated_container_page.dart';

class AnimatedContainerApp extends StatelessWidget {
  const AnimatedContainerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedContainerPage(),
    );
  }
}
