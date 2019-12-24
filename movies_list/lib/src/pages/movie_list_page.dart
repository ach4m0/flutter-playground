import 'package:flutter/material.dart';

import 'package:movies_list/src/widgets/movie_list.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Now playing',
        style: Theme.of(context).textTheme.title.copyWith(
          color: Theme.of(context).primaryColor
        ),)
      ),
      body: SafeArea( child: MovieList()),
    );
  }
}