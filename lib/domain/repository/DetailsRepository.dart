import 'package:dartz/dartz.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Detailsrepository {
  Future<Either<Fauilers, DetailsEntity>> getDetails(int Moviesid);
  Future<Either<Fauilers, SimilerEntity>> getSimiler(int Moviesid);
}
