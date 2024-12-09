import 'package:movies/domain/Entites/SearcEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Searchstate{}
class SearchstateInatial extends Searchstate{}
class SearchstateLoading extends Searchstate{}
class Searchstateerror extends Searchstate{
  Fauilers fauilers;
  Searchstateerror({required this.fauilers});
}
class Searchstatesuccess extends Searchstate{
  SearcEntity search;
  Searchstatesuccess({required this.search});
}