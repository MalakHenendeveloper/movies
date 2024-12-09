import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/BrowseCategory.dart';

@injectable
class Browseusecase {
  BrowsecategoryRepository browse;
  Browseusecase({required this.browse});
  Future<Either<Fauilers, MoviesBrowseEntitys>> invok() {
    return browse.getBrowes();
  }
}
