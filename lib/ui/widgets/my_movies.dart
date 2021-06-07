import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/ui/pages/movies/movies_controller.dart';
import 'package:jameschoi97/ui/widgets/my_grid.dart';
import 'package:get/get.dart';

class MoviePanel extends GetWidget<MoviesController> {
  MoviePanel({
    required this.column,
    required this.row,
    required this.paths,
  });

  int row;
  int column;
  List<String> paths;

  @override
  Widget build(BuildContext context) {
    final total = row * column;
    if (total > paths.length) {
      return Container(
        child: Text('Something wrong ${paths.length}'),
      );
    } else {
      final indices = getRandomIndices(total, paths);
      controller.visibilities = RxList<bool>.filled(row + column - 1, false);
      return Container(
        width: 300,
        height: 400,
        child: MyGrid(
          row: row,
          column: column,
          hasBorder: false,
          isScrollable: false,
          children: indices.asMap().entries.map((indexEntry) {
            final itemRow = (indexEntry.key / column).floor();
            final itemColumn = (indexEntry.key % column).floor();
            return Obx(() => AnimatedOpacity(
                    opacity: controller.visibilities![itemRow + itemColumn] ? 1 : 0,
                    duration: Duration(milliseconds: 500),
              child: Image.asset(
                  paths[indexEntry.value-1]
                  , width: 50),
                ));
          }).toList(),

        )
      );
    }
  }

  List<int> getRandomIndices(int count, List<String> paths) {
    var originalIndices = new List<int>.generate(paths.length, (i) => i + 1);
    var indices = <int>[];
    final random = Random();
    while (indices.length < count) {
      final randomIndex = random.nextInt(originalIndices.length);
      indices.add(originalIndices.removeAt(randomIndex));
    }
    return indices;
  }
}
