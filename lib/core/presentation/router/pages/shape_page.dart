import 'package:flutter/material.dart';

import 'package:portfolio/core/presentation/ui/model/shape_border_type.dart';
import 'package:portfolio/core/presentation/util/extension/color.dart';
import 'package:portfolio/core/presentation/util/widget/app_bar_text.dart';
import 'package:portfolio/core/presentation/util/widget/shaped_button.dart';

class ShapePage extends Page {
  ShapePage({
    required this.colorCode,
    required this.shapeBorderType,
  }) : super(key: ValueKey('$colorCode$shapeBorderType'));

  final String colorCode;
  final ShapeBorderType shapeBorderType;

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => ShapeScreen(
        colorCode: colorCode,
        shapeBorderType: shapeBorderType,
      ),
    );
  }
}

class ShapeScreen extends StatelessWidget {
  const ShapeScreen({
    super.key,
    required this.colorCode,
    required this.shapeBorderType,
  });

  final String colorCode;
  final ShapeBorderType shapeBorderType;

  Color get color => colorCode.hexToColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppBarText(
            appBarColor: color,
            text: '${shapeBorderType.name.toUpperCase()} #$colorCode ',
          ),
          backgroundColor: color,
        ),
        body: Center(
          child: ShapedButton(
            color: color,
            shapeBorderType: shapeBorderType,
          ),
        ));
  }
}
