import 'package:movies/domain/Entites/DetailsEntity.dart';

class DetailsDto extends DetailsEntity {
  String? status_message;
  DetailsDto(
      {super.adult,
      this.status_message,
      super.backdropPath,
      super.belongsToCollection,
      super.budget,
      super.genres,
      super.homepage,
      super.id,
      super.imdbId,
      super.originCountry,
      super.originalLanguage,
      super.originalTitle,
      super.overview,
      super.popularity,
      super.posterPath,
      super.productionCompanies,
      super.productionCountries,
      super.releaseDate,
      super.revenue,
      super.runtime,
      super.spokenLanguages,
      super.status,
      super.tagline,
      super.title,
      super.video,
      super.voteAverage,
      super.voteCount});

  DetailsDto.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    status_message = json['status_message'];
    backdropPath = json['backdrop_path'];
    belongsToCollection = json['belongs_to_collection'] != null
        ? new BelongsToCollection.fromJson(json['belongs_to_collection'])
        : null;
    budget = json['budget'];
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originCountry = json['origin_country'].cast<String>();
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      productionCompanies = <ProductionCompanies>[];
      json['production_companies'].forEach((v) {
        productionCompanies!.add(new ProductionCompanies.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      productionCountries = <ProductionCountries>[];
      json['production_countries'].forEach((v) {
        productionCountries!.add(new ProductionCountries.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    if (json['spoken_languages'] != null) {
      spokenLanguages = <SpokenLanguages>[];
      json['spoken_languages'].forEach((v) {
        spokenLanguages!.add(new SpokenLanguages.fromJson(v));
      });
    }
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
}

class BelongsToCollection extends BelongsToCollectionEntity {
  BelongsToCollection(
      {super.id, super.name, super.posterPath, super.backdropPath});

  BelongsToCollection.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
  }
}

class Genres extends GenresnEntity {
  Genres({super.id, super.name});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class ProductionCompanies extends ProductionCompaniesEntity {
  ProductionCompanies(
      {super.id, super.logoPath, super.name, super.originCountry});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }
}

class ProductionCountries extends ProductionCountriesEntity {
  ProductionCountries({super.iso31661, super.name});

  ProductionCountries.fromJson(Map<String, dynamic> json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }
}

class SpokenLanguages extends SpokenLanguagesEntity {
  SpokenLanguages({super.englishName, super.iso6391, super.name});

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }
}
