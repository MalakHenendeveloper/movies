import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/Injactable/Injactable.dart';
import 'package:movies/core/resources/custtomConstant.dart';
import 'package:movies/domain/Entites/DetailsEntity.dart';
import 'package:movies/ui/Home/cubit/HomeScreenState.dart';
import 'package:movies/ui/Home/cubit/HomeScreenViewModel.dart';

import 'package:movies/ui/Home/widget/Boster.dart';
import 'package:movies/ui/Home/widget/Moviescard.dart';
import 'package:movies/ui/Home/widget/NewRealesa.dart';
import 'package:movies/ui/datelisScreen/DatelisScreen.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var viewmodel = getIt<Homescreenviewmodel>();
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await viewmodel.getPopuler();
    await viewmodel.getTop();
    await viewmodel.getupComping();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<Homescreenviewmodel, Homescreenstate>(
          bloc: viewmodel,
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                      itemCount: viewmodel.PopulerList.isNotEmpty
                          ? viewmodel.PopulerList.length
                          : 0,
                      itemBuilder: (context, index, realIndex) {
                        if (viewmodel.PopulerList.isNotEmpty) {
                          return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => DatelisScreen(
                                          detailsEntity: DetailsEntity(
                                            id: viewmodel.PopulerList[index].id,
                                            backdropPath: viewmodel
                                                .PopulerList[index]
                                                .backdropPath,
                                            posterPath: viewmodel
                                                .PopulerList[index].posterPath,
                                            title: viewmodel
                                                .PopulerList[index].title,
                                            overview: viewmodel
                                                .PopulerList[index].overview,
                                            releaseDate: viewmodel
                                                .PopulerList[index].releaseDate,
                                          ),
                                        )));
                              },
                              child: Bosster(
                                  populer: viewmodel.PopulerList[index]));
                        } else {
                          return Center(
                            child: Text(
                              Appconstant.Nomovies,
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }
                      },
                      options: CarouselOptions(
                        height: 289.h,
                        enlargeCenterPage: true,
                        autoPlay: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 19.w),
                      child: Text(
                        Appconstant.NewReleases,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    if (state is HomeScreenLoading) ...[
                      Center(
                          child:
                              CircularProgressIndicator(color: Colors.white)),
                    ] else if (viewmodel.PopulerList.isNotEmpty) ...[
                      Container(
                        color: const Color.fromARGB(255, 66, 68, 68),
                        margin: EdgeInsets.all(10),
                        height: 246.h,
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: viewmodel.TopList!.length,
                            itemBuilder: (_, i) => InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => DatelisScreen(
                                            detailsEntity: DetailsEntity(
                                                id: viewmodel.TopList![i].id,
                                                backdropPath: viewmodel
                                                    .TopList![i].backdropPath,
                                                posterPath: viewmodel
                                                    .TopList![i].posterPath,
                                                overview: viewmodel
                                                    .TopList![i].overview,
                                                title:
                                                    viewmodel.TopList![i].title,
                                                releaseDate: viewmodel
                                                    .TopList![i].releaseDate),
                                          )));
                                },
                                child: Newrealesa(top: viewmodel.TopList![i]))),
                      )
                    ] else if (state is HomeScreenError) ...[
                      Center(
                        child: Text(
                          state.fauilers.ErrorMasege,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                    Container(
                      padding: EdgeInsets.only(left: 19.w),
                      child: Text(
                        Appconstant.Recomend,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    state is HomeScreenSuccesUpcomping
                        ? Container(
                            color: const Color.fromARGB(255, 66, 68, 68),
                            margin: EdgeInsets.all(10),
                            height: 246.h,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: viewmodel.UpcompingrList!.length,
                                itemBuilder: (_, i) => InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (_) => DatelisScreen(
                                                      detailsEntity:
                                                          DetailsEntity(
                                                        backdropPath: viewmodel
                                                            .UpcompingrList![i]
                                                            .backdropPath,
                                                        id: viewmodel
                                                            .UpcompingrList![i]
                                                            .id,
                                                        title: viewmodel
                                                            .UpcompingrList![i]
                                                            .title,
                                                        overview: viewmodel
                                                            .UpcompingrList![i]
                                                            .overview,
                                                        posterPath: viewmodel
                                                            .UpcompingrList![i]
                                                            .posterPath,
                                                        releaseDate: viewmodel
                                                            .UpcompingrList![i]
                                                            .releaseDate,
                                                      ),
                                                    )));
                                      },
                                      child: MoviesCard(
                                          upcomping:
                                              viewmodel.UpcompingrList![i]),
                                    )),
                          )
                        : Center(
                            child: CircularProgressIndicator(
                            color: Colors.white,
                          ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
