import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/Top_Rated.dart';
import 'package:movies/domain/Entites/Upcomaping.dart';
import 'package:movies/domain/Entites/populerEntity.dart';
import 'package:movies/domain/Usecase/GetPopuler.dart';
import 'package:movies/domain/Usecase/GetTopRated.dart';
import 'package:movies/domain/Usecase/GetUpComping.dart';
import 'package:movies/ui/Home/cubit/HomeScreenState.dart';

@injectable
class Homescreenviewmodel extends Cubit<Homescreenstate> {
  Homescreenviewmodel(
      {required this.populerusecase,
      required this.UpCompingusecase,
      required this.Topusecase})
      : super(HomeScreenInatial());

  final GetpopulerUsecase populerusecase;
  final GettopratedUseCase Topusecase;
  final GetupcompingUseCase UpCompingusecase;

  List<ResultsPopulerEntity> PopulerList = [];
  List<ResultsTopRatedEntity>? TopList = [];
  List<ResultsUpCompingEntity>? UpcompingrList = [];

  // Get Popular movies
  Future<void> getPopuler() async {
    if (PopulerList.isEmpty) {
      emit(HomeScreenLoading());
    }
    var either = await populerusecase.invok();
    either.fold((error) {
      emit(HomeScreenError(fauilers: error));
    }, (success) {
      PopulerList = success.resultsPopulerEntity ?? [];
      emit(HomeScreenSuccesPopuler(populer: success));
    });
  }

  // Get Top Rated movies
  Future<void> getTop() async {
    emit(HomeScreenLoading());

    var either = await Topusecase.invok();
    either.fold((error) {
      emit(HomeScreenError(fauilers: error));
    }, (success) {
      if (UpcompingrList != null) {
        TopList = success.resultstopratedentity ?? [];
        emit(HomeScreenSuccesTop(top: success));
      }
    });
  }

  // Get Upcoming movies
  Future<void> getupComping() async {
    emit(HomeScreenLoading());

    var either = await UpCompingusecase.invok();
    either.fold((error) {
      emit(HomeScreenError(fauilers: error));
    }, (success) {
      if (TopList != null) {
        UpcompingrList = success.resultsupcompingentity ?? [];
        emit(HomeScreenSuccesUpcomping(upComping: success));
      }
    });
  }
}
