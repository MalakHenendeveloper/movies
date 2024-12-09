import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Browsestates {}

class BrowsestateInatial extends Browsestates {}

class BrowsestateLoading extends Browsestates {}

class BrowsestateErorr extends Browsestates {
  Fauilers fauilers;
  BrowsestateErorr({required this.fauilers});
}

class BrowsestateSuccess extends Browsestates {
  MoviesBrowseEntitys Movies;
  BrowsestateSuccess({required this.Movies});
}
