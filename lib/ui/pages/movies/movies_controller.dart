import 'dart:async';

import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/movies/movies_xml.dart';
import 'package:xml/xml.dart';

class MoviesController extends GetxController {
  final imageNames = <String>[];
  final movies = <Movie>[];

  RxList<bool>? visibilities;
  List<Timer> timers = [];
  final int panelDuration = 1500;

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
    print(imageNames);
    super.onInit();
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
}
