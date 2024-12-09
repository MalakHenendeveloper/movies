/**import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/Imageassets.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/ui/datelisScreen/cubit/DetailsState.dart';
import 'package:movies/ui/datelisScreen/cubit/DetailsviewModel.dart';

class MoviesDateils extends StatelessWidget {
  const MoviesDateils({
    super.key,
    required this.details,
  });
  final DetailsEntity details;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Detailsviewmodel, DetailsScreenState>(
        bloc: Detailsviewmodel.get(context)..getSimilerScreen(details.id ?? 0),
        builder: (context, state) {
          if (state is SimilerScreenSuccess) {
            Container(
              color: const Color.fromARGB(255, 66, 68, 68),
              margin: EdgeInsets.all(10),
              height: 246.h,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.details.results!.length,
                  itemBuilder: (_, i) {
                    var similer = state.details.results![i];
                    return Container(
                      color: const Color.fromARGB(255, 40, 38, 38),
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      height: 160.h,
                      width: 96.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Image.network(
                            "https://image.tmdb.org/t/p/w500${details.backdropPath!}",
                            //  AppImageAssets.Image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "{upcompi}",
                                  style: TextStyle(color: Colors.white60),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "upcomping'',",
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            );
          }
          return Container(
            child: Text(
              "data",
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }
}
 */