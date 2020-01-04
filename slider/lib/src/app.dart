import 'package:flutter/material.dart';
 
class SliderApp extends StatefulWidget {

  @override
  _SliderAppState createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
  
  double resizerValue = 100;
  double radiusValue = 10;
  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider App',
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purpleAccent,
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.purple,
          valueIndicatorColor: Colors.purple,
          thumbColor: Colors.purpleAccent,
          activeTickMarkColor: Colors.white,
          inactiveTrackColor: Colors.pink[100],
          inactiveTickMarkColor: Colors.pink
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sliders'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(radiusValue),
                  child: Image.asset(
                    'assets/avengers.jpg',
                    width: resizerValue * 3,
                  )
                ),
                SizedBox(height: 40.0,),
                Text('Select the size of the image'),
                Slider(
                  value: resizerValue,
                  min: 0,
                  max: 100,
                  label: '$resizerValue',
                  divisions: 8,
                  onChanged: isDisabled ? null : (value) {
                    setState((){
                      resizerValue = value;
                    });
                  },
                ),
                Text('Select the radius'),
                Slider(
                  value: radiusValue,
                  min: 0,
                  max: 50,
                  label: '$radiusValue',
                  divisions: 5,
                  onChanged: isDisabled ? null : (value) {
                    setState((){
                      radiusValue = value;
                    });
                  },
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Sliders disabled'),
                    Checkbox(
                      onChanged: _checkboxChanged,
                      value: isDisabled
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Sliders disabled'),
                    Switch(
                      value: isDisabled,
                      onChanged: _checkboxChanged,
                    ),
                  ],
                )
              ],
            ),
          )
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  _checkboxChanged(value) {
    setState(() {
      isDisabled = value;
    });
  }
}