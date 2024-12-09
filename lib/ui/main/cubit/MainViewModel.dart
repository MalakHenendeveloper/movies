import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/Browse/BrowseScreen.dart';
import 'package:movies/ui/Home/HomeScreen.dart';
import 'package:movies/ui/Search/SearchScreen.dart';
import 'package:movies/ui/main/cubit/MainState.dart';

class Mainviewmodel extends Cubit<Mainstate> {
  Mainviewmodel() : super(MainInatial());
  int index = 0;
  List<Widget> tabs = [
    Homescreen(),
    Searchscreen(),
    Browsescreen(),
  ];
  void changetab(int selectedindex) {
    index = selectedindex;
    emit(ChangeTab());
  }
}
