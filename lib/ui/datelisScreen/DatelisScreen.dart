import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/resources/Imageassets.dart';
import 'package:movies/core/resources/custtomConstant.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/ui/datelisScreen/cubit/DetailsState.dart';
import 'package:movies/ui/datelisScreen/cubit/DetailsviewModel.dart';
import 'package:readmore/readmore.dart';

class DatelisScreen extends StatelessWidget {
  DatelisScreen({super.key, required this.detailsEntity});

  final DetailsEntity detailsEntity;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          detailsEntity.title ?? '',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: BlocBuilder<Detailsviewmodel, DetailsScreenState>(
              bloc: Detailsviewmodel.get(context)
                ..getDetailsScreen(detailsEntity.id ?? 0),
              builder: (context, state) {
                if (state is DetailsScreenLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is DetailsScreenError) {
                  print(
                    state.fauilers.ErrorMasege,
                  );
                  return Center(
                    child: Text(
                      state.fauilers.ErrorMasege,
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                } else if (state is DetailsScreenSuccess) {
                  // var details = state.details;
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 217.h,
                          width: 412.w,
                          child: Image.network(
                            "https://image.tmdb.org/t/p/w500${detailsEntity.backdropPath!}",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            detailsEntity.title ?? '',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " ${detailsEntity.releaseDate}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 199.h,
                                width: 127.w,
                                child: Image.network(
                                  "https://image.tmdb.org/t/p/w500${detailsEntity.posterPath!}",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10.w),
                                    width: 212.w,
                                    height: 120.h,
                                    child: ReadMoreText(
                                      style: TextStyle(color: Colors.white),
                                      detailsEntity.overview ?? 'No',
                                      trimMode: TrimMode.Line,
                                      trimLines: 2,
                                      colorClickableText: Colors.pink,
                                      trimCollapsedText: Appconstant.Showmore,
                                      trimExpandedText: Appconstant.Showless,
                                      moreStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        if (state is DetailsScreenLoading) ...[
                          Center(
                            child: CircularProgressIndicator(),
                          )
                        ] else if (state is DetailsScreenError) ...[
                          Text("Error")
                        ] else if (state is SimilerScreenSuccess) ...[
                          Container(
                            color: const Color.fromARGB(255, 66, 68, 68),
                            margin: EdgeInsets.all(10),
                            height: 246.h,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (_, i) {
                                  return Container(
                                    color:
                                        const Color.fromARGB(255, 40, 38, 38),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    height: 160.h,
                                    width: 96.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          child: Image.asset(
                                            AppImageAssets.Image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "{upcompi}",
                                                style: TextStyle(
                                                    color: Colors.white60),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            "upcomping",
                                            style:
                                                TextStyle(color: Colors.amber),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ]
                      ]);
                }

                return Center(
                  child: Text("لا توجد بيانات"),
                );
              })),
    ));
  }
}
