import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/domain/Entites/SearcEntity.dart';

class Search extends StatelessWidget {
   Search({super.key, required this.search});
ResultsSearch search;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://image.tmdb.org/t/p/w500${search.posterPath ?? ''}',
              width: 120.w,
              height: 120.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100.h,
                  height: 100.h,
                  color: Colors.grey,
                  child: Icon(
                    Icons.error,
                    color: Colors.white,
                    size: 50,
                  ),
                );
              },
            ),
          ),

          SizedBox(width: 15.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  search.title ?? '',
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  search.releaseDate ?? '',
                  style:  TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  search.popularity.toString(),
                  style:  TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
