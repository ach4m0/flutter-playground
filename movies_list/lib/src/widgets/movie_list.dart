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
  bool _isLoading = false;
  List<Movie> _movies = List();
  MoviesService _moviesService = MoviesService();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    
    _scrollController.addListener(_onScroll);

    // Load initial items
    _fetchMovies();
  }

  @override
  void dispose() {
    super.dispose();
    // Stopping the scroll controller
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RefreshIndicator(
        onRefresh: () {
          _page = 1;
          _movies.clear();
          return _fetchMovies();
        },
        child: Stack(
          children: <Widget>[
            ListView.builder(
              controller: _scrollController,
              itemCount: _movies.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieListItem(movie: _movies[index]);
              },
            ),
            _isLoading ?
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ) : 
              Container()
          ]
        ),
      ),
    );
  }

  _fetchMovies() async {
    setState(() {
      _isLoading = true;
    });

    List<Movie> list = await _moviesService.getNowPlaying(_page);
    
    setState(() {
      _isLoading = false;
      _movies.addAll(list);
      _page++;
    });
  }

  _onScroll() async {
    if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      await _fetchMovies();
      _scrollController.animateTo(_scrollController.offset + 50.0,
        duration: Duration(milliseconds: 100),
        curve: ElasticInOutCurve()
      );
    }
  }

}