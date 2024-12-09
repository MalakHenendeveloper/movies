import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/Injactable/Injactable.dart';
import 'package:movies/ui/Search/cubit/searchstate.dart';
import 'package:movies/ui/Search/widget/Search.dart';

import 'cubit/searchviewmodel.dart';

class Searchscreen extends StatelessWidget {
  Searchscreen({super.key});
  var viewmodel = getIt<Searchviewmodel>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: BlocBuilder<Searchviewmodel, Searchstate>(
          bloc: viewmodel,
          builder: (context, state) {
            if (state is Searchstatesuccess) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      controller: viewmodel.movies,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Search',
                          prefixIcon: IconButton(
                              onPressed: () {
                                viewmodel.getsearch(viewmodel.movies.text);
                              },
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ))),
                    ),
                  ),
                  Container(
                    height: 650.h,
                    child: ListView.builder(
                        itemCount: viewmodel.listSearch.length,
                        itemBuilder: (context, index) {
                          var search = viewmodel.listSearch[index];
                          return Search(
                            search: search,
                          );
                        }),
                  )
                ],
              );
            } else if (state is Searchstateerror) {
              return Center(
                child: Text(
                  "Not Found Movie",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              );
            } else if (state is SearchstateLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: viewmodel.movies,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Search',
                        prefixIcon: IconButton(
                            onPressed: () {
                              viewmodel.getsearch(viewmodel.movies.text);
                            },
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ))),
                  ),
                )
              ],
            );
          }),
    ));
  }
}
