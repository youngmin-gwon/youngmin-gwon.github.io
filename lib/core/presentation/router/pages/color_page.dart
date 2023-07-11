import 'package:flutter/material.dart';

import 'package:portfolio/core/presentation/ui/model/shape_border_type.dart';
import 'package:portfolio/core/presentation/util/extension/color.dart';
import 'package:portfolio/core/presentation/util/widget/app_bar_text.dart';
import 'package:portfolio/core/presentation/util/widget/shape_border_gridview.dart';

class ColorPage extends Page {
  ColorPage({
    required this.onShapeTap,
    required this.selectedColorCode,
  }) : super(key: ValueKey<String>(selectedColorCode));

  final Function(ShapeBorderType) onShapeTap;
  final String selectedColorCode;

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => ColorScreen(
        onShapeTap: onShapeTap,
        colorCode: selectedColorCode,
      ),
    );
  }
}

class ColorScreen extends StatelessWidget {
  const ColorScreen({
    super.key,
    required this.colorCode,
    required this.onShapeTap,
  });

  final String colorCode;
  final Function(ShapeBorderType) onShapeTap;

  Color get color => colorCode.hexToColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(appBarColor: color, text: '#$colorCode'),
        backgroundColor: color,
      ),
      body: ShapeBorderGridView(
        color: color,
        onShapeTap: onShapeTap,
      ),
    );
  }
}
