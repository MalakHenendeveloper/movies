import 'package:dartz/dartz.dart';
import 'package:movies/data/models/Upcomaping.dart';
import 'package:movies/domain/Entites/Top_Rated.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

abstract class HomeDataSource {
  Future<Either<Fauilers, PopulerEntity>> getPopuler();
  Future<Either<Fauilers, TopRatedEntity>> getTopRated();
  Future<Either<Fauilers, UpComping>> getUpcomping();
}
