import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/ui/constants.dart';
import 'package:portfolio/core/presentation/util/extension/color.dart';
import 'package:portfolio/core/presentation/util/widget/colored_text.dart';

class ColorGrid extends StatelessWidget {
  final List<Color> colors;
  final Function(String) onColorTap;

  const ColorGrid({
    Key? key,
    required this.colors,
    required this.onColorTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        var color = colors[index];
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                onColorTap(color.toHex());
              },
              style: ElevatedButton.styleFrom(primary: color),
              child: ColoredText(color: color),
            ),
          ),
        );
      },
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: LayoutConstants.spaceL,
        mainAxisSpacing: LayoutConstants.spaceL,
        childAspectRatio: 3,
      ),
    );
  }
}
