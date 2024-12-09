import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/SearcEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/SearchRepository.dart';

@injectable
class SearchUsecase {
  SearchRepository search;
  SearchUsecase({required this.search});
  Future<Either<Fauilers, SearcEntity>> invok(String query) {
    return search.getSearch(query);
  }
}
