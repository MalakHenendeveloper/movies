class UpCompingEntity {
  DatesEntity? dates;
  int? page;
  List<ResultsUpCompingEntity>? resultsupcompingentity;
  int? totalPages;
  int? totalResultsUpCompingEntity;

  UpCompingEntity(
      {this.dates,
      this.page,
      this.resultsupcompingentity,
      this.totalPages,
      this.totalResultsUpCompingEntity});
}

class DatesEntity {
  String? maximum;
  String? minimum;

  DatesEntity({this.maximum, this.minimum});
}

class ResultsUpCompingEntity {
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

  ResultsUpCompingEntity(
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
