import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/SimilerEntity.dart';
import 'package:movies/domain/Usecase/DetailsUsecase.dart';
import 'package:movies/domain/Usecase/SimilerUsecase.dart';
import 'package:movies/ui/datelisScreen/cubit/DetailsState.dart';

@injectable
class Detailsviewmodel extends Cubit<DetailsScreenState> {
  Detailsviewmodel({required this.detailsusecase, required this.similerusecase})
      : super(DetailsScreenInatial());
  Detailsusecase detailsusecase;
  Similerusecase similerusecase;
  // List<ResultsSimilerEntity> Movies = [];
  static Detailsviewmodel get(context) => BlocProvider.of(context);
  void getDetailsScreen(int Moviesid) async {
    emit(DetailsScreenLoading());
    var either = await detailsusecase.invok(Moviesid);
    either.fold((error) {
      emit(DetailsScreenError(fauilers: error));
    }, (response) {
      emit(DetailsScreenSuccess(details: response));
    });
  }

  Future<void> getSimilerScreen(int Moviesid) async {
    emit(DetailsScreenLoading());
    var either = await similerusecase.invok(Moviesid);
    either.fold((error) {
      emit(DetailsScreenError(fauilers: error));
    }, (response) {
      //  Movies = response.results ?? [];
      emit(SimilerScreenSuccess(details: response));
    });
  }
}
