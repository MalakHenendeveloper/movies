import 'package:movies/domain/Entites/Upcomaping.dart';

class UpComping extends UpCompingEntity {
    String? statusMessage;
  UpComping(
    this.statusMessage,
      {super.dates,
      super.page,
      super.resultsupcompingentity,
      super.totalPages,
      super.totalResultsUpCompingEntity});

  UpComping.fromJson(Map<String, dynamic> json) {
    dates = json['dates'] != null ? new Dates.fromJson(json['dates']) : null;
    page = json['page'];
     statusMessage = json['statusMessage'];
    if (json['results'] != null) {
      resultsupcompingentity = <Results>[];
      json['results'].forEach((v) {
        resultsupcompingentity!.add(new Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResultsUpCompingEntity = json['total_results'];
  }
}

class Dates extends DatesEntity {
  Dates({super.maximum, super.minimum});

  Dates.fromJson(Map<String, dynamic> json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }
}

class Results extends ResultsUpCompingEntity {
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
