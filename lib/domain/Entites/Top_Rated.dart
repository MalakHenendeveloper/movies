class TopRatedEntity {
  int? page;
  List<ResultsTopRatedEntity>? resultstopratedentity;
  int? totalPages;
  int? totalResultsTopRatedEntity;

  TopRatedEntity(
      {this.page,
      this.resultstopratedentity,
      this.totalPages,
      this.totalResultsTopRatedEntity});
}

class ResultsTopRatedEntity {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  ResultsTopRatedEntity(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});
}
