// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/DetailsRepository.dart';

@injectable
class Similerusecase {
  Detailsrepository detailsrepository;
  Similerusecase({
    required this.detailsrepository,
  });
  Future<Either<Fauilers, SimilerEntity>> invok(int Moviesid) {
    return detailsrepository.getSimiler(Moviesid);
  }
}
