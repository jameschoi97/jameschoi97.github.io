import 'dart:async';

import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/movies/movies_xml.dart';
import 'package:xml/xml.dart';

enum MovieInfo {
  name,
  year,
  series,
}

extension MovieInfoExtension on MovieInfo {
  String get name {
    if (index == MovieInfo.name.index) return 'Name';
    if (index == MovieInfo.year.index) return 'Year';
    if (index == MovieInfo.series.index) return 'Series';
    return 'Error';
  }

  double get widthRatio {
    if (index == MovieInfo.name.index) {
      return 300;
    } else if (index == MovieInfo.year.index) {
      return 120;
    } else if (index == MovieInfo.series.index) {
      return 200;
    } else {
      return 0;
    }
  }
}

class MoviesController extends GetxController {
  final imageNames = <String>[];
  final movies = <Movie>[];

  RxList<bool>? visibilities;
  List<Timer> timers = [];
  final int panelDuration = 1000;

  @override
  void onInit() {
    final singleLineXml = moviesXml.replaceAll('\n', '').replaceAll('    ', '').replaceAll('&amp;', '&');
    final movieNodes = XmlDocument.parse(singleLineXml).children[1];
    for (var node in movieNodes.children) {
      final movie = Movie(node);
      movies.add(movie);
      if (movie.imageName != null) {
        imageNames.add(movie.imageName!);
      }
    }
    super.onInit();
  }

  void showPanel() {
    for (int index = 0; index < visibilities!.length; index++) {
      timers.add(Timer(
          Duration(
              milliseconds:
                  (panelDuration / visibilities!.length * index).ceil()),
          () => visibilities![index] = true));
    }
  }

  void hidePanel() {
    for (Timer timer in timers) {
      timer.cancel();
    }
    timers.clear();
    for (int index = 0; index < visibilities!.length; index++) {
      visibilities![index] = false;
    }
  }

  void sortUsingCategory(MovieInfo category){

  }
}

class Movie {
  String name;
  String? year;
  String? series;
  String? imageName;

  Movie(XmlNode node)
      : name = node.getElement('Name')!.firstChild.toString(),
        year = node.getElement('Year') == null
            ? null
            : node.getElement('Year')!.firstChild.toString(),
        series = node.getElement('Series') == null
            ? null
            : node.getElement('Series')!.firstChild.toString(),
        imageName = node.getElement('ImgName') == null
            ? null
            : node.getElement('ImgName')!.firstChild.toString();

  String valueOf(MovieInfo category) {
    if (category == MovieInfo.name) {
      return name;
    } else if (category == MovieInfo.year) {
      return year ?? '';
    } else if (category == MovieInfo.series) {
      return series ?? '';
    } else {
      return '';
    }
  }
}
