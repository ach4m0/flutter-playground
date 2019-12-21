import 'package:flutter/material.dart';

import 'package:forms/src/widgets/body_widget.dart';
import 'package:forms/src/widgets/header_widget.dart';

class StylesPage extends StatelessWidget {
  const StylesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: SafeArea(
        top: true,
        child: 
          Column(
            children: <Widget>[
              HeaderWidget(),
              BodyWidget()
            ],
          ),
      )
        
    );
  }
}
