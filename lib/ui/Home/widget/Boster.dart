import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/domain/Entites/populerEntity.dart';

class Bosster extends StatelessWidget {
  Bosster({super.key, required this.populer});
  ResultsPopulerEntity populer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 289.h,
      child: Stack(
        children: [
          Image.network(
            "https://image.tmdb.org/t/p/w500${populer.backdropPath}",
            fit: BoxFit.fitWidth,
            height: 217.h,
            width: 412.w,
          ),
          Positioned(
            left: 12.w,
            top: 80.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://image.tmdb.org/t/p/w500${populer.posterPath}",
                  height: 199.h,
                  width: 129.w,
                ),
                SizedBox(width: 10.w),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 150.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        populer.title ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        populer.releaseDate ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
