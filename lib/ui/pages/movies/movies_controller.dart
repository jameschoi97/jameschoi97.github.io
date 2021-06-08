import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/movies/movies_xml.dart';
import 'package:xml/xml.dart';

class MoviesController extends GetxController {
  final paths = <String>[];
  final movies = <Movie>[];

  RxList<bool>? visibilities;

  @override
  void onInit() {
    final singleLineXml = moviesXml.replaceAll('\n', '').replaceAll('    ', '');
    final movieNodes = XmlDocument.parse(singleLineXml).children[1];
    for (var node in movieNodes.children) {
      final movie = Movie(node);
      movies.add(movie);
      if (movie.imagePath != null) {
        paths.add(movie.imagePath!);
      }
    }
    print(paths);
    super.onInit();
  }
}

class Movie {
  String name;
  String? year;
  String? series;
  String? imagePath;

  Movie(XmlNode node)
      : name = node.getElement('Name')!.firstChild.toString(),
        year = node.getElement('Year') == null
            ? null
            : node.getElement('Year')!.firstChild.toString(),
        series = node.getElement('Series') == null
            ? null
            : node.getElement('Series')!.firstChild.toString(),
        imagePath = node.getElement('ImgName') == null
            ? null
            : 'assets/images/posters/${node.getElement('ImgName')!.firstChild}';
}
