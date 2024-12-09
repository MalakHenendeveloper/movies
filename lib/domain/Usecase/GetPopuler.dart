// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/HomeRepository.dart';

@injectable
class GetpopulerUsecase {
  Homerepository homerepository;
  GetpopulerUsecase({
    required this.homerepository,
  });
  Future<Either<Fauilers, PopulerEntity>> invok() {
    return homerepository.getpopuler();
  }
}
