import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';
import 'package:movies/domain/Usecase/BrowseUsecase.dart';
import 'package:movies/ui/Browse/cubit/BrowseStates.dart';

@injectable
class Browseviewmodel extends Cubit<Browsestates> {
  Browseviewmodel({required this.browseusecase}) : super(BrowsestateInatial());
  Browseusecase browseusecase;
  List<GenresEntity> geners = [];
  getbrowse() async {
    emit(BrowsestateLoading());
    var either = await browseusecase.invok();
    either.fold((error) => emit(BrowsestateErorr(fauilers: error)), (response) {
      geners = response.genres ?? [];
      emit(BrowsestateSuccess(Movies: response));
    });
  }
}
