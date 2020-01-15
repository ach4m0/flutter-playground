import 'package:flutter/material.dart';
import 'package:movies_stream/src/models/movie_model.dart';
import 'package:movies_stream/src/widgets/movie_grid_item.dart';

class MovieGrid extends StatefulWidget {

  List<Movie> movies;
  Function moreItems;

  MovieGrid({Key key, @required this.movies, this.moreItems}) : super(key: key);

  @override
  _MovieGridState createState() => _MovieGridState(movies: this.movies, moreItems: moreItems);
}

class _MovieGridState extends State<MovieGrid> {

  List<Movie> movies;
  Function moreItems;
  ScrollController _scrollController = ScrollController();

  _MovieGridState({@required this.movies, this.moreItems});

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return MovieGridItem(movie: movies[index]);
        },
      ),
    );
  }

  _onScroll() {
    if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      this.moreItems();
    }
  }
}