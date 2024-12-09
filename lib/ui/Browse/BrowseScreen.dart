import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/Injactable/Injactable.dart';
import 'package:movies/core/resources/custtomConstant.dart';
import 'package:movies/ui/Browse/cubit/BrowseStates.dart';
import 'package:movies/ui/Browse/cubit/BrowseViewModel.dart';
import 'package:movies/ui/Browse/widget/Browsecategoryitem.dart';

class Browsescreen extends StatelessWidget {
  Browsescreen({super.key});
  var viewmodel = getIt<Browseviewmodel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            Appconstant.Browse,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 25.sp),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: BlocBuilder<Browseviewmodel, Browsestates>(
            bloc: viewmodel..getbrowse(),
            builder: (context, state) {
              if (state is BrowsestateErorr) {
                print(state.fauilers.ErrorMasege);
                return Center(
                  child: Text(
                    state.fauilers.ErrorMasege,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              } else if (state is BrowsestateLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is BrowsestateSuccess) {
                return Column(children: [
                  Container(
                    height: 700.h,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2),
                        itemCount: viewmodel.geners.length,
                        itemBuilder: (context, index) {
                          return BrowseCategoryItem(
                            movies: viewmodel.geners[index],
                          );
                        }),
                  )
                ]);
              }
              return Container(
                child: Text(
                  'Not Found',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }));
  }
}
