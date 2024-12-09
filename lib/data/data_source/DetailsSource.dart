import 'package:dartz/dartz.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Detailssource {
  Future<Either<Fauilers, DetailsEntity>> getdetails(int Moviesid);
  Future<Either<Fauilers, SimilerEntity>> getSimiler(int Moviesid);
}
