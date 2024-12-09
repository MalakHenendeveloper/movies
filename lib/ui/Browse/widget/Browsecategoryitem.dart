import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/domain/Entites/MoviesBrowseEntitys.dart';

class BrowseCategoryItem extends StatelessWidget {
  BrowseCategoryItem({super.key, required this.movies});
  GenresEntity movies;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 1.h,
      child: Center(
        child: Text(
          movies.name ?? '',
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/BackGround.png'), fit: BoxFit.cover)),
    );
  }
}
