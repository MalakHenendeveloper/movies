// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/DetailsRepository.dart';

@injectable
class Detailsusecase {
  Detailsrepository detailsrepository;
  Detailsusecase({
    required this.detailsrepository,
  });
  Future<Either<Fauilers, DetailsEntity>> invok(int Moviesid) {
    return detailsrepository.getDetails(Moviesid);
  }
}
