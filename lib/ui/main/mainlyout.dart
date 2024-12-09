import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/Routes_Manger/Routes.dart';
import 'package:movies/core/resources/Imageassets.dart';
import 'package:movies/core/resources/custtomConstant.dart';
import 'package:movies/ui/main/cubit/MainState.dart';
import 'package:movies/ui/main/cubit/MainViewModel.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  var viewmodel = Mainviewmodel();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Mainviewmodel, Mainstate>(
      bloc: viewmodel,
      builder: (_, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.yellow,
              currentIndex: viewmodel.index,
              type: BottomNavigationBarType.fixed,
              onTap: (value) => viewmodel.changetab(value),
              items: [
                Bottomnavigation(AppImageAssets.Home, Appconstant.Homescreen),
                Bottomnavigation(
                    AppImageAssets.Search, Appconstant.searchscreen),
                Bottomnavigation(
                    AppImageAssets.Downloads, Appconstant.BrowseScreen),
                Bottomnavigation(
                    AppImageAssets.Downloads2, Appconstant.Witchlistscreen),
              ]),
          body: viewmodel.tabs[viewmodel.index],
        );
      },
    );
  }
}

class Bottomnavigation extends BottomNavigationBarItem {
  String iconpath;
  String title;

  Bottomnavigation(this.iconpath, this.title)
      : super(icon: ImageIcon(AssetImage(iconpath)), label: title);
}
