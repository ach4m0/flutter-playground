
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _counterCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple counter app'),
        centerTitle: true,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30.0,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counterCount = 0;
              });
            },
            child: Icon(Icons.exposure_zero)
          ),
          Expanded(
            child: SizedBox()
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counterCount--;
              });
            },
            child: Icon(Icons.remove)
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counterCount++;
              });
            },
            child: Icon(Icons.add)
          )
          
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Text('# of taps:',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                Text('$_counterCount',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.deepOrange
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
