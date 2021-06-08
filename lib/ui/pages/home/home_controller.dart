import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/movies/movies_controller.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final moviesController = Get.find<MoviesController>();
  var smallScreen = false;
  var moviesContentLength = 0.0;

  @override
  void onInit() {
    scrollController.addListener(_scrollListener);
    super.onInit();
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent - moviesContentLength && smallScreen) {
      moviesController.showPanel();
    }

    if (scrollController.offset < scrollController.position.maxScrollExtent - moviesContentLength && smallScreen) {
      moviesController.hidePanel();
    }
  }

}