import 'package:flutter/material.dart';

import 'package:forms/src/widgets/date-picker.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                labelText: 'Location',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.deepPurple[400],
                prefixIcon: Icon(Icons.location_on, color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10.0,),
            DatePicker(
              inputDecoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                filled: true,
                fillColor: Colors.deepPurple[400],
                labelText: 'Date',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.calendar_today, color: Colors.white)
              ),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}