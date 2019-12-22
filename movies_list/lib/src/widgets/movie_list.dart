import 'package:flutter/material.dart';

import 'package:movies_list/src/models/movie_model.dart';
import 'package:movies_list/src/services/movies_service.dart';

import 'movie_list_item.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {

  int _page = 1;
  List<Movie> movies = [];
  MoviesService moviesService = MoviesService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          // Text('Now playing',
          //   style: Theme.of(context).textTheme.title.copyWith(
          //     color: Theme.of(context).primaryColor,
          //   ),
          // ),
          FutureBuilder(
            future: moviesService.getNowPlaying(_page),
            builder: (context, AsyncSnapshot<List<Movie>> snapshot){
              if(snapshot.hasData){
                return Text('Hay datos',
                  style: Theme.of(context).textTheme.title.copyWith(
                    color: Theme.of(context).primaryColor,
                  )
                );
              }else{
                return Center(
                  child: CircularProgressIndicator()
                );
              }
            },
          )
      );
  }
}