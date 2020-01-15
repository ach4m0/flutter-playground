import 'package:flutter/material.dart';
import 'package:movies_stream/src/models/movie_model.dart';

class MovieGridItem extends StatelessWidget {

  final Movie movie;

  const MovieGridItem({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 200,
      child: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Text('${movie.title}', style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: NetworkImage(movie.poster)),
          ),
        ],
      ),
    );
  }
}