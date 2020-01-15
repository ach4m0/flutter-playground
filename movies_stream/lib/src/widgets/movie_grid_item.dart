import 'package:flutter/material.dart';
import 'package:movies_stream/src/models/movie_model.dart';

class MovieGridItem extends StatelessWidget {

  final Movie movie;

  const MovieGridItem({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0
                  )
                ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: NetworkImage(movie.poster),
                  height: 200.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '${movie.title}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0
              )
            ),
          ],
        ),
      ]
    );
  }
}