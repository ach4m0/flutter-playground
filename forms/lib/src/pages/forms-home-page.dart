import 'package:flutter/material.dart';

import 'package:forms/src/pages/no-styles-page.dart';
import 'package:forms/src/pages/styles-page.dart';

class FormsHomePage extends StatefulWidget {

  @override
  _FormsHomePageState createState() => _FormsHomePageState();
}

class _FormsHomePageState extends State<FormsHomePage> {

  int _selectedIndex = 0;
  
  static const List<Widget> _tabOptions = <Widget>[
    NoStylesPage(),
    StylesPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Por defecto'),
            icon: Icon(Icons.cloud_off)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            title: Text('Con estilos'),
            activeIcon: Icon(Icons.cloud_done)
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
      body: _tabOptions[_selectedIndex]
    );
  }
}
