import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/domain/Entites/Top_Rated.dart';

class Newrealesa extends StatelessWidget {
  const Newrealesa({required this.top});
  final ResultsTopRatedEntity top;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Image.network(
        "https://image.tmdb.org/t/p/w500${top.backdropPath ?? ''}",
        fit: BoxFit.fitHeight,
      ),
      height: 160.h,
      width: 96.w,
    );
  }
}
