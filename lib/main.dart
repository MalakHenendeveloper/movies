import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/resources/BlocObserver.dart';
import 'package:movies/core/Routes_Manger/Routes.dart';
import 'package:movies/core/Routes_Manger/Routesmanger.dart';
import 'package:movies/core/Injactable/Injactable.dart';
import 'package:movies/ui/datelisScreen/cubit/DetailsviewModel.dart';

void main() {
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<Detailsviewmodel>())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 870),
      builder: (context, child) => MaterialApp(
        home: child,
        onGenerateRoute: AppRoutesManger.getRoutes,
        initialRoute: AppRoutes.MainScreen,
      ),
    );
  }
}
