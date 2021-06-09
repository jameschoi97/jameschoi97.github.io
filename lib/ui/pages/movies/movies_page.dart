import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_movies.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';

import 'movies_controller.dart';

class MoviesPage extends GetView<MoviesController> {
  static final name = '/movies';

  final _mainController = Get.find<MainController>();
  final _themeController = Get.find<MyThemeController>();

  final columns = [
    MovieInfo.name,
    MovieInfo.year,
    MovieInfo.series,
  ];

  final sidePadding = 40.0;

  late final columnTotalWidth = getTotalWidth();

  @override
  Widget build(BuildContext context) {
    _mainController.currentPage.value = Pages.movies;
    return MyScaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 56),
          child: MyAppBar(),
        ),
        body: Column(
          children: [Text('On May 5 2017, '), _showMovies(context)],
        ));
  }

  Widget _showMovies(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(sidePadding),
      decoration: BoxDecoration(
          border:
              Border.all(color: _themeController.theme.colorSet.movieBorder)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            _getTitleRow(context),
            Container(
                height:
                    MediaQuery.of(context).size.height - 56 - 50 - sidePadding,
                child: SingleChildScrollView(
                  child: Column(
                    children: controller.movies
                        .asMap()
                        .entries
                        .map((movie) => _getMovieRow(context, movie))
                        .toList(),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget _getTitleRow(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: columns
            .map((column) => Container(
                height: 50,
                width: max(
                    column.widthRatio,
                    (MediaQuery.of(context).size.width - sidePadding * 2 - 10) /
                        columnTotalWidth *
                        column.widthRatio),
                child: TextButton(
                  style: _themeController.borderlessButtonStyle,
                  onPressed: () => controller.sortUsingCategory(column),
                  child: Text(
                    column.name,
                    textAlign: TextAlign.center,
                  ),
                )))
            .toList(),
      ),
    );
  }

  Widget _getMovieRow(BuildContext context, MapEntry<int, Movie> movie) {
    return TextButton(
      onPressed: movie.value.imageName != null
          ? () {
              showPoster(movie.value);
            }
          : null,
      style: _themeController.borderlessButtonStyle,
      child: Container(
        height: 50,
        color: movie.key % 2 == 0
            ? _themeController.theme.colorSet.movieRow1
            : _themeController.theme.colorSet.movieRow2,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: columns
                .map((column) => Container(
                    width: max(
                        column.widthRatio,
                        (MediaQuery.of(context).size.width -
                                sidePadding * 2 -
                                10) /
                            columnTotalWidth *
                            column.widthRatio),
                    alignment: Alignment.center,
                    child: getChild(movie.value, column, movie.key % 2 != 0)))
                .toList()),
      ),
    );
  }

  Widget? getChild(Movie movie, MovieInfo column, bool evenRow) {
    return Text(movie.valueOf(column),
        textAlign: TextAlign.center,
        style: TextStyle(
            color: evenRow
                ? _themeController.theme.colorSet.movieRow2Font
                : _themeController.theme.colorSet.fontColor));
  }

  double getTotalWidth() {
    var sum = 0.0;
    columns.forEach((category) {
      sum += category.widthRatio;
    });
    return sum;
  }

  void showPoster(Movie movie) {
    Get.dialog(AlertDialog(
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: _themeController.theme.colorSet.movieBorder, width: 2.0),
            borderRadius: BorderRadius.circular(10)),
        content: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(movie.name, style: TextStyle(
                    letterSpacing: 3,
                    fontWeight: FontWeight.w600,
                    fontSize:40,
                  )),
                ),
              ),
              Expanded(
                  child:
                      Container(
                        padding: EdgeInsets.all(20),
                          child: Image.asset('assets/images/posters/${movie.imageName}')
                      )
              ),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 150,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.red,
                        width: 1,
                      ),
                    ),
                    child: Center(child: Text('Close')),
                  ))
            ],
          ),
        )));
  }
}
