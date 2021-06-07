import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_movies.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';

class MoviesPage extends GetView<MainController> {
  static final name = '/movies';

  @override
  Widget build(BuildContext context) {
    controller.currentPage.value = Pages.movies;
    return MyScaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: MyAppBar(),
      ),
      body: Center(
        child: MoviePanel(
            column: 3,
            row: 3,
            paths: controller.movieController.paths),
      ),
    );
  }

}