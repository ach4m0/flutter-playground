import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('The witcher', style: TextStyle(color: Colors.white),),
      leading: Image.network('https://s.libertaddigital.com/2019/12/19/1920/1080/fit/the-witcher-netflix.jpg'),
    );
  }
}