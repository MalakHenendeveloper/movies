import 'package:movies/domain/Entites/Top_Rated.dart';

class TopRated extends TopRatedEntity {
    String? statusMessage;
  TopRated(this.statusMessage,

      {super.page,
      super.resultstopratedentity,
      super.totalPages,
      super.totalResultsTopRatedEntity});

  TopRated.fromJson(Map<String, dynamic> json) {
    page = json['page'];
     statusMessage = json['statusMessage'];
    if (json['results'] != null) {
      resultstopratedentity = <Results>[];
      json['results'].forEach((v) {
        resultstopratedentity!.add(new Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResultsTopRatedEntity = json['total_results'];
  }
}

class Results extends ResultsTopRatedEntity {
  Results(
      {super.adult,
      super.backdropPath,
      super.genreIds,
      super.id,
      super.originalLanguage,
      super.originalTitle,
      super.overview,
      super.popularity,
      super.posterPath,
      super.releaseDate,
      super.title,
      super.video,
      super.voteAverage,
      super.voteCount});

  Results.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
}
