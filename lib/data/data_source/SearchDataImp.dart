import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/Api/Api.dart';
import 'package:movies/core/Api/Endpoint.dart';
import 'package:movies/data/data_source/SearchData.dart';
import 'package:movies/data/models/SearchDto.dart';
import 'package:movies/domain/Entites/SearcEntity.dart';
import 'package:movies/domain/Fauilers.dart';

@Injectable(as: SearchData)
class SearchDataImp implements SearchData {
  ApiManger apiManger;
  SearchDataImp({required this.apiManger});
  @override
  Future<Either<Fauilers, SearcEntity>> getSearch(String query) async {
    var response = await apiManger
        .getData(Endpoint.Serach, queryParameters: {"query": query});
    var responseSearch = SearchDto.fromJson(response.data);
    try {
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return Right(responseSearch);
      } else {
        return Left(ServerError(ErrorMasege: response.statusMessage!));
      }
    } catch (e) {
      return Left(NetworkError(ErrorMasege: e.toString()));
    }
  }
}
