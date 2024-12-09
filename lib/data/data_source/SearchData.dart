import 'package:dartz/dartz.dart';
import 'package:movies/domain/Entites/SearcEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class SearchData {
  Future<Either<Fauilers, SearcEntity>> getSearch(String query);
}
