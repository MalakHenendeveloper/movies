import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';

class MoviesBrowseDto  extends MoviesBrowseEntitys {
  MoviesBrowseDto({
      super.genres,});

  MoviesBrowseDto.fromJson(dynamic json) {
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(GenresDto.fromJson(v));
      });
    }
  }
}

class GenresDto extends GenresEntity {
  GenresDto({
      super.id,
      super.name,});

  GenresDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }


}