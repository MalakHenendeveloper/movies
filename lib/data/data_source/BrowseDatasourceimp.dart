import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/Api/Api.dart';
import 'package:movies/core/Api/Endpoint.dart';
import 'package:movies/data/data_source/BrowseDatasource.dart';
import 'package:movies/data/models/MoviesBrowseDto.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Fauilers.dart';

@Injectable(as: Browsedatasource)
class Browsedatasourceimp implements Browsedatasource {
  ApiManger apiManger;
  Browsedatasourceimp({required this.apiManger});
  Future<Either<Fauilers, MoviesBrowseEntitys>> getBrowse() async {
    try {
      var response = await apiManger.getData(Endpoint.Browse);
      var responseBrowse = MoviesBrowseDto.fromJson(response.data);
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return Right(responseBrowse);
      } else {
        return Left(ServerError(ErrorMasege: response.statusMessage!));
      }
    } catch (e) {
      return Left(NetworkError(ErrorMasege: e.toString()));
    }
  }
}
