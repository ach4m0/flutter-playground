import 'package:flutter/material.dart';

import 'movie_list_item.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Text('Now playing',
            style: Theme.of(context).textTheme.title.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
          MovieListItem(),
          MovieListItem(),
          MovieListItem(),
        ],
      ),
    );
  }
}