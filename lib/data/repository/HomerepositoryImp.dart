// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:movies/data/data_source/HomedataSource.dart';
import 'package:movies/domain/Entites/Top_Rated.dart';
import 'package:movies/domain/Entites/Upcomaping.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/HomeRepository.dart';

@Injectable(as: Homerepository)
class Homerepositoryimp implements Homerepository {
  HomeDataSource homeDataSource;
  Homerepositoryimp({
    required this.homeDataSource,
  });
  @override
  Future<Either<Fauilers, TopRatedEntity>> getToprated() async {
    var either = await homeDataSource.getTopRated();
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Fauilers, UpCompingEntity>> getUpComping() async {
    var either = await homeDataSource.getUpcomping();
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Fauilers, PopulerEntity>> getpopuler() async {
    var either = await homeDataSource.getPopuler();

    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
