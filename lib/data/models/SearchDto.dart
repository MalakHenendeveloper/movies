import 'package:movies/domain/Entites/SearcEntity.dart';

class SearchDto extends SearcEntity {
  SearchDto({
      super.page, 
      super.results, 
      super.totalPages, 
      super.totalResultsSearch,});

  SearchDto.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResultsSearch = json['total_results'];
  }

}

class Results extends ResultsSearch{
  Results({
      super.adult, 
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
      super.voteCount,});

  Results.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
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