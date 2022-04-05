import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  final int? column;
  final int? row;
  final bool hasBorder;
  final bool isScrollable;
  final List<Widget> children;
  final int maxGridSize;

  MyGrid(
      {Key? key,
        this.row,
        this.column,
        this.hasBorder = true,
        this.isScrollable = true,
        required this.children,
        this.maxGridSize = 250})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildGrid(context);
  }

  Widget _buildGrid(BuildContext context) {
    final _column =
        column ?? (MediaQuery.of(context).size.width / maxGridSize).ceil();
    final _row = row ?? (children.length / _column).ceil();
    final elements = <Widget>[];
    for (var r = 0; r < _row; r++) {
      for (var c = 0; c < _column; c++) {
        var index = r * _column + c;
        Border? border;
        if (hasBorder) {
          if (c == _column - 1) {
            border = Border(
              bottom: BorderSide(color: Colors.black),
            );
          } else {
            border = Border(
                right:
                BorderSide(color: Colors.black),
                bottom:
                BorderSide(color: Colors.black));
          }
        }
        Widget element;
        if (index < children.length) {
          element = children[index];
        } else {
          element = SizedBox.shrink();
        }
        elements.add(Container(
          decoration: BoxDecoration(
            border: border,
          ),
          child: element,
        ));
      }
    }
    if (isScrollable) {
      return GridView.builder(
          itemCount: elements.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: column ??
                (MediaQuery.of(context).size.width / maxGridSize).ceil(),
          ),
          itemBuilder: (_, index) {
            return elements[index];
          });
    } else {
      final rows = <Widget>[];
      for (var r = 0; r < _row; r++) {
        final row = <Widget>[];
        for (var c = 0; c < _column; c++) {
          var index = r * _column + c;
          row.add(elements[index]);
        }
        rows.add(IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: row.map((item) => Expanded(
                child:item
            )).toList(),
          ),
        ));
      }
      return Container(
          child: Column(
            children: rows,
          )
      );
    }
  }
}
