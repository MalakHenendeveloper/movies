import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/Api/Api.dart';
import 'package:movies/core/Api/Endpoint.dart';
import 'package:movies/data/data_source/DetailsSource.dart';
import 'package:movies/data/models/Details.dart';
import 'package:movies/data/models/Similer.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Fauilers.dart';

@Injectable(as: Detailssource)
class Detailssourceimp implements Detailssource {
  ApiManger apiManger;
  Detailssourceimp({
    required this.apiManger,
  });

  @override
  Future<Either<Fauilers, DetailsEntity>> getdetails(int Moviesid) async {
    try {
      var response = await apiManger.getDetailsMovies(Moviesid);
      var ResponseDetails = DetailsDto.fromJson(response.data);
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return Right(ResponseDetails);
      } else {
        return Left(ServerError(ErrorMasege: ResponseDetails.status_message!));
      }
    } catch (e) {
      return Left(NetworkError(ErrorMasege: e.toString()));
    }
  }

  @override
  Future<Either<Fauilers, SimilerEntity>> getSimiler(int Moviesid) async {
    try {
      var response =
          await apiManger.getSimilerMovies(Moviesid, Endpoint.Similar);
      var SimilerResponse4 = SimilerDto.fromJson(response.data);
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return Right(SimilerResponse4);
      } else {
        return Left(ServerError(ErrorMasege: response.statusMessage!));
      }
    } catch (e) {
      return Left(NetworkError(ErrorMasege: e.toString()));
    }
  }
}
