import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:portfolio/core/presentation/ui/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    this.showGrid = false,
  });

  final bool showGrid;

  ({List<TrackSize> columnSizes, List<TrackSize> rowSizes}) _computeGridConfig(
      double viewportWidth) {
    if (viewportWidth > LayoutConstants.desktopThreshold) {
      // Desktop
      return (
        columnSizes: _getGridColumnsWithMarginAndGutter(
          columnCount: 12,
          margin: LayoutConstants.space2XL * 5,
          gutter: LayoutConstants.spaceXL,
        ),
        rowSizes: [1.fr],
      );
    } else if (viewportWidth > LayoutConstants.laptopThreshold) {
      // Laptop
      return (
        columnSizes: _getGridColumnsWithMarginAndGutter(
          columnCount: 12,
          margin: LayoutConstants.space3XL,
          gutter: LayoutConstants.spaceXL,
        ),
        rowSizes: [1.fr],
      );
    } else if (viewportWidth > LayoutConstants.tabletThreshold) {
      // Larger mobile
      return (
        columnSizes: _getGridColumnsWithMarginAndGutter(
          columnCount: 8,
          margin: LayoutConstants.space4XL,
          gutter: LayoutConstants.spaceL,
        ),
        rowSizes: [1.fr],
      );
    } else {
      // Small mobile
      return (
        columnSizes: _getGridColumnsWithMarginAndGutter(
          columnCount: 4,
          margin: LayoutConstants.spaceM,
          gutter: LayoutConstants.spaceM,
        ),
        rowSizes: [1.fr],
      );
    }
  }

  List<TrackSize> _getGridColumnsWithMarginAndGutter({
    required int columnCount,
    required double margin,
    required double gutter,
  }) {
    final columnSizeWithMargin = 2 * columnCount + 1;
    final columns = List.generate(columnSizeWithMargin, (index) {
      if (index == 0 || index == columnSizeWithMargin - 1) {
        return margin.px;
      }
      return index % 2 == 0 ? gutter.px : 1.fr;
    });

    return columns;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final (:columnSizes, :rowSizes) =
              _computeGridConfig(constraints.maxWidth);
          return LayoutGrid(
            columnSizes: columnSizes,
            rowSizes: rowSizes,
            children: [
              if (showGrid)
                ...List.generate(
                  columnSizes.length ~/ 2,
                  (index) => GridPlacement(
                    columnStart: 2 * index + 1,
                    rowStart: 0,
                    child: Container(
                      color: Colors.amber.withOpacity(.3),
                    ),
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
