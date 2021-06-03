import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/about_me/about_me_page.dart';
import 'package:jameschoi97/ui/pages/home/home_page.dart';
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
  final hoverPage = Pages.home.obs;
}