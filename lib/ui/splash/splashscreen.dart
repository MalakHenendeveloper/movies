import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/resources/Imageassets.dart';
import 'package:movies/core/Routes_Manger/Routes.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, AppRoutes.MainScreen);
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.h,
          ),
          Image.asset(AppImageAssets.Movies),
          Image.asset(AppImageAssets.Group),
        ],
      ),
    );
  }
}
