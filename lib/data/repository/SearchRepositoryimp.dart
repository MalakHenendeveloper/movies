import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/data/data_source/SearchData.dart';
import 'package:movies/domain/Entites/SearcEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/SearchRepository.dart';

@Injectable(as: SearchRepository)
class SearchRepsitoryimp implements SearchRepository {
  SearchData data;
  SearchRepsitoryimp({required this.data});
  @override
  Future<Either<Fauilers, SearcEntity>> getSearch(String query) async {
    var either = await data.getSearch(query);
    return either.fold((error) => Left(error), (success) => Right(success));
  }
}
