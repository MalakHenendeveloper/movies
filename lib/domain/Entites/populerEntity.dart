class PopulerEntity {
  int? page;
  List<ResultsPopulerEntity>? resultsPopulerEntity;
  int? totalPages;
  int? totalResultsPopulerEntity;

  PopulerEntity(
      {this.page,
      this.resultsPopulerEntity,
      this.totalPages,
      this.totalResultsPopulerEntity});
}

class ResultsPopulerEntity {
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

  ResultsPopulerEntity(
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
