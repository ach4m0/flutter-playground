import 'package:flutter/material.dart';

class StylesPage extends StatelessWidget {
  const StylesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Con validaciones'),backgroundColor: Colors.red,),
      body: Center(child: Text('Con validaciones'))
    );
  }
}
