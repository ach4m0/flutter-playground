import 'package:flutter/material.dart';

import 'package:movies_list/src/models/movie_model.dart';

class MovieListItem extends StatelessWidget {

  Movie movie;

  MovieListItem({this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movie.title, style: TextStyle(color: Colors.white),),
      leading: Image.network(movie.posterPath),
    );
  }
}