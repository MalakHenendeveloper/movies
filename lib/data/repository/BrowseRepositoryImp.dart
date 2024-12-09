import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/data/data_source/BrowseDatasource.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Fauilers.dart';
import 'package:movies/domain/repository/BrowseCategory.dart';

@Injectable(as: BrowsecategoryRepository)
class Browserepositoryimp implements BrowsecategoryRepository {
  Browsedatasource browse;
  Browserepositoryimp({required this.browse});
  @override
  Future<Either<Fauilers, MoviesBrowseEntitys>> getBrowes() async {
    var either = await browse.getBrowse();
    return either.fold((error) => Left(error), (success) => Right(success));
  }
}
