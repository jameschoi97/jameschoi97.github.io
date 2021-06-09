import 'dart:async';

import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/movies/movies_xml.dart';
import 'package:xml/xml.dart';

enum MovieInfo {
  name,
  year,
  series,
  seriesIndex,
  defaultSort, //only used for sorting
}


extension ColumnExtension on MovieInfo {
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
  final movies = <Movie>[].obs;

  final currentSort = MovieInfo.name.obs;
  final sortAscending = true.obs;

  RxList<bool>? visibilities;
  List<Timer> timers = [];
  final int panelDuration = 1000;

  @override
  void onInit() {
    final singleLineXml = moviesXml.replaceAll('\n', '').replaceAll('    ', '');
    final movieNodes = XmlDocument.parse(singleLineXml).children[1];
    for (var node in movieNodes.children) {
      final movie = Movie(node);
      movies.add(movie);
      if (movie.imageName != null) {
        imageNames.add(movie.imageName!);
      }
    }
    sortMoviesUsingCategory(MovieInfo.defaultSort);
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

  void sortMoviesUsingCategory(MovieInfo category) {
    var newList = List<Movie>.from(movies);
    if (category == currentSort.value) {
      sortAscending.value = !sortAscending.value;
    } else {
      currentSort.value = category;
      sortAscending.value = true;
    }
    newList.sort((a,b) {
      if (a.valueOf(category) == null){
        if (sortAscending.value) {
          return 1;
        } else {
          return -1;
        }
      } else if (b.valueOf(category) == null){
        if (sortAscending.value) {
          return -1;
        } else {
          return 1;
        }
      } else {
        if (category == MovieInfo.defaultSort) {
          var firstItem = a.valueOf(MovieInfo.series);
          var secondItem = b.valueOf(MovieInfo.series);
          if (firstItem == null) {
            firstItem = a.valueOf(MovieInfo.name);
          }
          if (secondItem == null) {
            secondItem = b.valueOf(MovieInfo.name);
          }
          final result = firstItem!.compareTo(secondItem!);
          if (result != 0) {
            return result;
          } else {
            return (a.valueOf(MovieInfo.seriesIndex) ?? '0').compareTo(b.valueOf(MovieInfo.seriesIndex) ?? '0');
          }
        } else if (category == MovieInfo.series){
          final result = a.valueOf(MovieInfo.series)!.compareTo(b.valueOf(MovieInfo.series)!);
          if (result != 0) {
            return result;
          } else {
            return (a.valueOf(MovieInfo.seriesIndex) ?? '0').compareTo(b.valueOf(MovieInfo.seriesIndex) ?? '0');
          }
        } else {
          return (a.valueOf(category)!).compareTo(b.valueOf(category)!);
        }

      }

    });
    if (!sortAscending.value) {
      newList = List<Movie>.from(newList.reversed);
    }
    movies.value = newList;
  }
}

class Movie {
  String name;
  String? year;
  String? series;
  String? seriesIndex;
  String? imageName;

  Movie(XmlNode node)
      : name = node.getElement('Name')!.firstChild.toString(),
        year = node.getElement('Year') == null
            ? null
            : node.getElement('Year')!.firstChild.toString(),
        series = node.getElement('Series') == null
            ? null
            : node.getElement('Series')!.firstChild.toString(),
        seriesIndex = node.getElement('SeriesIndex') == null
            ? null
            : node.getElement('SeriesIndex')!.firstChild.toString(),
        imageName = node.getElement('ImgName') == null
            ? null
            : node.getElement('ImgName')!.firstChild.toString();

  String? valueOf(MovieInfo category) {
    if (category == MovieInfo.name) {
      return name;
    } else if (category == MovieInfo.year) {
      return year;
    } else if (category == MovieInfo.series) {
      return series;
    } else if (category == MovieInfo.seriesIndex) {
      return seriesIndex;
    } else if (category == MovieInfo.defaultSort) {
      return '';
    } else {
      return null;
    }
  }
}
