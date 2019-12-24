class MoviesList{

  List<Movie> movies = [];

  MoviesList.fromJSONList(jsonList){
    for(var item in jsonList) {
      movies.add(Movie.fromJSONData(item));
    }
  }

}


class Movie {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Movie({
      this.popularity,
      this.voteCount,
      this.video,
      this.posterPath,
      this.id,
      this.adult,
      this.backdropPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.title,
      this.voteAverage,
      this.overview,
      this.releaseDate,
  });

  Movie.fromJSONData(Map<String, dynamic> json) {
    this.adult = json['adult'];
    this.backdropPath = json['backdrop_path'];
    this.genreIds = json['genre_ids'].cast<int>();
    this.id = json['id'];
    this.originalLanguage = json['original_language'];
    this.originalTitle = json['original_title'];
    this.overview = json['overview'];
    this.popularity = json['popularity'] / 1;
    this.posterPath = json['poster_path'];
    this.releaseDate = json['release_date'];
    this.title = json['title'];
    this.video = json['video'];
    this.voteAverage = json['vote_average'] / 1;
    this.voteCount = json['vote_count'];
  }
}


