// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:movies/data/data_source/DetailsSource.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/DetailsRepository.dart';

@Injectable(as: Detailsrepository)
class Detailsrepositoryimp implements Detailsrepository {
  Detailssource detailssource;
  Detailsrepositoryimp({
    required this.detailssource,
  });

  @override
  Future<Either<Fauilers, DetailsEntity>> getDetails(int Moviesid) async {
    var either = await detailssource.getdetails(Moviesid); // تمرير Moviesid
    return either.fold((error) => Left(error), (success) => Right(success));
  }

  @override
  Future<Either<Fauilers, SimilerEntity>> getSimiler(int Moviesid) async {
    var either = await detailssource.getSimiler(Moviesid);
    return either.fold((error) => Left(error), (success) => Right(success));
  }
}
