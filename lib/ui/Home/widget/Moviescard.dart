import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/domain/Entites/Upcomaping.dart';

class MoviesCard extends StatelessWidget {
  MoviesCard({super.key, required this.upcomping});
  ResultsUpCompingEntity upcomping;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 40, 38, 38),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: 162.h,
      width: 96.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              "https://image.tmdb.org/t/p/w500${upcomping.posterPath ?? ''}",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "${upcomping.voteAverage}",
                  style: TextStyle(color: Colors.white60),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              upcomping.originalTitle ?? '',
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}
