class MoviesBrowseEntitys {
  MoviesBrowseEntitys({
      this.genres,});

 
  List<GenresEntity>? genres;


}

class GenresEntity {
  GenresEntity({
      this.id, 
      this.name,});

 
  num? id;
  String? name;

}