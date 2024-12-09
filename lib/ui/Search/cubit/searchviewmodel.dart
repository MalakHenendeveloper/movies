import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/domain/Entites/SearcEntity.dart';
import 'package:movies/domain/Usecase/SearchUsecase.dart';
import 'package:movies/ui/Search/cubit/searchstate.dart';
@injectable
class Searchviewmodel extends Cubit<Searchstate>{
  Searchviewmodel({required this.searchusecase}):super(SearchstateInatial());
  SearchUsecase searchusecase;
  var movies=TextEditingController();
  List<ResultsSearch>listSearch=[];
  getsearch(String query)async{
    emit(SearchstateLoading());
  var either=await searchusecase.invok(query);
  either.fold((error)=>emit(Searchstateerror(fauilers: error)),
          (response){
    listSearch=response.results??[];
    emit(Searchstatesuccess(search: response));} );
  }
}