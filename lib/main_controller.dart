import 'dart:async';

import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/about_me/about_me_page.dart';
import 'package:jameschoi97/ui/pages/home/home_page.dart';
import 'package:jameschoi97/ui/pages/movies/movies_controller.dart';
import 'package:jameschoi97/ui/pages/movies/movies_page.dart';
import 'package:jameschoi97/ui/pages/resume/resume_page.dart';

enum Pages {
  home,
  aboutMe,
  resume,
  movies,
}

extension PagesExtension on Pages {
  String get name {
    if (index == Pages.home.index) {
      return 'Home';
    } else if (index == Pages.aboutMe.index) {
      return 'About Me';
    } else if (index == Pages.resume.index) {
      return 'Resume';
    } else if (index == Pages.movies.index) {
      return 'Movies';
    } else {
      return '';
    }
  }

  String get pageName {
    if (index == Pages.home.index) {
      return HomePage.name;
    } else if (index == Pages.aboutMe.index) {
      return AboutMePage.name;
    } else if (index == Pages.resume.index) {
      return ResumePage.name;
    } else if (index == Pages.movies.index) {
      return MoviesPage.name;
    } else {
      return '';
    }
  }
}

const pages = [
  Pages.home,
  Pages.aboutMe,
  Pages.resume,
  Pages.movies,
];


class MainController extends GetxController {
  final currentPage = Pages.home.obs;
  final hovering = false.obs;
  final hoverPage = Pages.home.obs;
  final movieController = Get.put(MoviesController());
  final idlePage = Pages.aboutMe.obs;

  @override
  void onInit() {
    Timer.periodic(
    Duration(seconds: 4), (Timer t) {
      if (idlePage.value == Pages.aboutMe) {
        idlePage.value = Pages.resume;
      } else if (idlePage.value == Pages.resume) {
        movieController.showPanel();
        idlePage.value = Pages.movies;
      } else {
        idlePage.value = Pages.aboutMe;
        if (!hovering.value || hoverPage.value != Pages.movies) {
          movieController.hidePanel();
        }

      }
    });

    super.onInit();
  }

  Pages getShowPage() {
    if (hovering.value) {
      return hoverPage.value;
    } else {
      return idlePage.value;
    }
  }
}