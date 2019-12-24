import 'package:flutter/material.dart';

import 'package:movies_list/src/models/movie_model.dart';

class MovieListItem extends StatelessWidget {

  final Movie movie;

  MovieListItem({this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/images/image-placeholder.png'),
              image: movie.posterPath != null ?
                NetworkImage('https://image.tmdb.org/t/p/w500/${movie.posterPath}') :
                AssetImage('assets/images/image-placeholder.png'),
              width: 100.0
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(movie.originalTitle,
                      style: Theme.of(context).textTheme.subtitle,
                      overflow: TextOverflow.fade,
                    ),
                    SizedBox(height: 10,),
                    Text(movie.releaseDate,),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow[700]),
                        Icon(Icons.star, color: Colors.yellow[700]),
                        Icon(Icons.star_half, color: Colors.yellow[700]),
                        Text('(${movie.voteAverage})',),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}