import 'package:dartz/dartz.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class BrowsecategoryRepository {
  Future<Either<Fauilers, MoviesBrowseEntitys>> getBrowes();
}
