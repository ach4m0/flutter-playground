import 'package:flutter/material.dart';
import 'package:movies_stream/src/models/movie_model.dart';
import 'package:movies_stream/src/services/movies_service.dart';
import 'package:movies_stream/src/widgets/movie_grid.dart';

class HomePage extends StatelessWidget {

  final moviesService = new MoviesService();

  @override
  Widget build(BuildContext context) {

    // Load initial data
    moviesService.fetchPopularMovies();

    return Scaffold(
      appBar: AppBar(
        title: Text('POPULAR MOVIES')
      ),
      body: SafeArea(
        child: StreamBuilder(
          stream: moviesService.popularMoviesStream,
          builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot) {
            return snapshot.connectionState != ConnectionState.active ?
              Center(child: CircularProgressIndicator()) :
              MovieGrid(
                movies: snapshot.data,
                moreItems: fetchMovies,
              );
          }
        )
      ),
    );
  }

  fetchMovies() {
    moviesService.fetchPopularMovies();
  }
}