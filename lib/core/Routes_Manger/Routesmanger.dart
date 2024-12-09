import 'package:flutter/material.dart';
import 'package:movies/core/Routes_Manger/Routes.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/ui/datelisScreen/DatelisScreen.dart';
import 'package:movies/ui/main/mainlyout.dart';
import 'package:movies/ui/splash/splashscreen.dart';

class AppRoutesManger {
  static Route<dynamic>? getRoutes(RouteSettings settinges) {
    switch (settinges.name) {
      case AppRoutes.splashscreen:
        return MaterialPageRoute(builder: (_) => Splashscreen());
      case AppRoutes.MainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
      /*  case AppRoutes.DatelisScreen:
        //  final detailsentity = settinges.arguments as DetailsEntity;
        return MaterialPageRoute(builder: (_) => DatelisScreen()); */
      default:
        return ErrorRoutes();
    }
  }

  static Route<dynamic> ErrorRoutes() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Text("Error ,page Not Founed "),
            ));
  }
}
