// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:movies/core/Api/Api.dart';
import 'package:movies/core/Api/Endpoint.dart';
import 'package:movies/data/data_source/HomedataSource.dart';
import 'package:movies/data/models/Top_Rated.dart';
import 'package:movies/data/models/Upcomaping.dart';
import 'package:movies/data/models/popu;er.dart';
import 'package:movies/domain/Entites/Top_Rated.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

@Injectable(as: HomeDataSource)
class Homedatasourceimp implements HomeDataSource {
  ApiManger apiManger;
  Homedatasourceimp({
    required this.apiManger,
  });
  @override
  Future<Either<Fauilers, PopulerEntity>> getPopuler() async {
    try {
      var Response = await apiManger.getData(
        Endpoint.populer,
      );
      var populer = Populer.fromJson(Response.data);
      if (Response.statusCode! >= 200 && Response.statusCode! <= 299) {
        return Right(populer);
      } else {
        return Left(ServerError(ErrorMasege: populer.statusMessage!));
      }
    } catch (e) {
      return Left(NetworkError(
          ErrorMasege: "Network Error, Please Cheeck Internet Connect"));
    }
  }

  @override
  Future<Either<Fauilers, TopRatedEntity>> getTopRated() async {
    try {
      var Response = await apiManger.getData(Endpoint.TopRated);
      var topRated = TopRated.fromJson(Response.data);
      if (Response.statusCode! >= 200 && Response.statusCode! <= 299) {
        return Right(topRated);
      } else {
        return Left(ServerError(ErrorMasege: topRated.statusMessage!));
      }
    } catch (e) {
      return Left(NetworkError(
          ErrorMasege: "Network Error, Please Cheeck Internet Connect"));
    }
  }

  @override
  Future<Either<Fauilers, UpComping>> getUpcomping() async {
    try {
      // ignore: non_constant_identifier_names
      var Response = await apiManger.getData(Endpoint.UpComping);
      var upcomping = UpComping.fromJson(Response.data);
      if (Response.statusCode! >= 200 && Response.statusCode! <= 299) {
        return Right(upcomping);
      } else {
        return Left(ServerError(ErrorMasege: upcomping.statusMessage!));
      }
    } catch (e) {
      return Left(NetworkError(
          ErrorMasege: "Network Error, Please Cheeck Internet Connect"));
    }
  }
}
