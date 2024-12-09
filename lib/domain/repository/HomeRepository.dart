import 'package:dartz/dartz.dart';
import 'package:movies/domain/Entites/Top_Rated.dart';
import 'package:movies/domain/Entites/Upcomaping.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class Homerepository {
  Future<Either<Fauilers, PopulerEntity>> getpopuler();
  Future<Either<Fauilers, TopRatedEntity>> getToprated();
  Future<Either<Fauilers, UpCompingEntity>> getUpComping();
}
