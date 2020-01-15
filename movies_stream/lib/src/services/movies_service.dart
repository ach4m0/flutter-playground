import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_stream/src/models/movie_model.dart';

class MoviesService {

  final _apiKey = '6885a43485793ed737e6fcb24ca6ac40';
  final _host = 'api.themoviedb.org';
  final _language = 'es-ES';
  final _popularService = '/3/movie/popular';

  int popularMoviesPage = 1;
  List<Movie> _popularMoviesList = new List();
  
  // Stream definition
  final _popularMoviesStreamController = StreamController<List<Movie>>.broadcast();

  Function(List<Movie>) get popularMoviesSink => _popularMoviesStreamController.sink.add;
  
  Stream<List<Movie>> get popularMoviesStream => _popularMoviesStreamController.stream;

  void disposeStreams() {
    _popularMoviesStreamController?.close();
  }
  // End Stream definition

  Future<List<Movie>> fetchPopularMovies() async{
    Uri url = Uri.https(_host, _popularService, 
      {
        'api_key': _apiKey,
        'language': _language,
        'page': '${popularMoviesPage++}'
      }
    );

    final response = await http.get(url);
    final data = json.decode(response.body);
    final list = MoviesList.fromJSONList(data['results']);

    _popularMoviesList.addAll(list.movies);
    popularMoviesSink(_popularMoviesList);

    return list.movies;

  }

}