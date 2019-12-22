import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:movies_list/src/models/movie_model.dart';

class MoviesService {

  final _apiKey = '6885a43485793ed737e6fcb24ca6ac40';
  final _host = 'api.themoviedb.org';
  final _language = 'es-ES';
  final _nowPlayingService = '/3/movie/now_playing';


  Future<List<Movie>> getNowPlaying(int page) async{
    Uri url = Uri.https(_host, _nowPlayingService, 
      {
        'api_key': _apiKey,
        'language': _language,
        'page': page.toString()
      }
    );

    final response = await http.get(url);
    final data = json.decode(response.body);
    final list = MoviesList.fromJSONList(data['results']);

    return list.movies;

  }

}