import 'package:dartz/dartz.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Browsedatasource {
  Future<Either<Fauilers, MoviesBrowseEntitys>> getBrowse();
}
