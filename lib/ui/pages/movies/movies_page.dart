import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
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
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              constraints: BoxConstraints(
                maxWidth: 750,
              ),
              child: Text('On May 5th, 2017, I started listing down all the movies I\'ve ever watched - to the best '
                  'of my recollection. Ever since, I\'ve tried my best to keep a record of all the movies I\'ve watched '
                  'subsequently.',
              style: TextStyle(
                fontSize: 18
              ),),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Currently, I\'m at ', style: TextStyle(fontSize: 15)),
                    TextSpan(
                      text: controller.movies.length.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),
                    ),
                    TextSpan(
                        text: ' movies.', style: TextStyle(fontSize: 15)
                    ),
                  ]
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Movies',
                ),
                onChanged: (value) => controller.searchText.value = value.toLowerCase(),
              )
            ),
            _showMovies(context)],
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
        child: Obx(() => Column(
              children: [
                _getTitleRow(context),
                Container(
                    height: MediaQuery.of(context).size.height -
                        56 -
                        50 -
                        sidePadding,
                    width: max(getTotalWidth(), MediaQuery.of(context).size.width-2*sidePadding),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.movies.where((item) => item.name.toLowerCase().contains(controller.searchText.value)).length,
                        itemBuilder: (context, index) => _getMovieRow(context, controller.movies.where((item) => item.name.toLowerCase().contains(controller.searchText.value)).elementAt(index), index % 2 != 0)


                    )

                  )
              ],
            )),
      ),
    );
  }

  Widget _getTitleRow(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: _themeController.theme.colorSet.movieBorder))),
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
                  onPressed: () => controller.sortMoviesUsingCategory(column),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 30),
                      Text(
                        column.name,
                        textAlign: TextAlign.center,
                      ),
                      controller.currentSort.value == column
                          ? Icon(
                              controller.sortAscending.value
                                  ? Icons.keyboard_arrow_down_outlined
                                  : Icons.keyboard_arrow_up_outlined,
                              size: 30)
                          : SizedBox(width: 30),
                    ],
                  ),
                )))
            .toList(),
      ),
    );
  }

  Widget _getMovieRow(BuildContext context, Movie movie, bool evenRow) {
    return TextButton(
      onPressed: movie.imageName != null
          ? () {
              showPoster(movie);
            }
          : null,
      style: _themeController.borderlessButtonStyle,
      child: Container(
        height: 50,
        color: evenRow
        ? _themeController.theme.colorSet.movieRow2 : _themeController.theme.colorSet.movieRow1,
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
                    child: getChild(movie, column, evenRow)))
                .toList()),
      ),
    );
  }

  Widget? getChild(Movie movie, MovieInfo column, bool evenRow) {
    return Text(movie.valueOf(column) ?? '',
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
                  child: Text(movie.name,
                      style: TextStyle(
                        letterSpacing: 3,
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                      )),
                ),
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                          'assets/images/posters/${movie.imageName}'))),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 150,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
