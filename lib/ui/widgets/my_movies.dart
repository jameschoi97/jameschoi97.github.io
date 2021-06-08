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
    required this.images,
    this.width = 800,
  });

  int row;
  int column;
  List<String> images;
  double width;

  @override
  Widget build(BuildContext context) {
    final total = row * column;
    if (total > images.length) {
      return Container(
        child: Text('Something wrong ${images.length}'),
      );
    } else {
      final indices = getRandomIndices(total, images);
      controller.visibilities = RxList<bool>.filled(row + column - 1, false);
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width,
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
                        duration: Duration(milliseconds: (controller.panelDuration / (row + column - 1) + 100).ceil()),
                  child: Image.asset(
                      'assets/images/thumbnails/${images[indexEntry.value-1]}'
                      , fit: BoxFit.fitHeight),
                    ));
              }).toList(),

            )
          ),
        ],
      );
    }
  }

  List<int> getRandomIndices(int count, List<String> images) {
    var originalIndices = new List<int>.generate(images.length, (i) => i + 1);
    var indices = <int>[];
    final random = Random();
    while (indices.length < count) {
      final randomIndex = random.nextInt(originalIndices.length);
      indices.add(originalIndices.removeAt(randomIndex));
    }
    return indices;
  }
}
