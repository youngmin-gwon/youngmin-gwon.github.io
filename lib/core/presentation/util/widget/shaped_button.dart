import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/ui/constants.dart';
import 'package:portfolio/core/presentation/ui/model/shape_border_type.dart';
import 'package:portfolio/core/presentation/util/widget/colored_text.dart';

class ShapedButton extends StatelessWidget {
  final Color color;
  final ShapeBorderType shapeBorderType;
  final VoidCallback? onPressed;
  final String? text;

  const ShapedButton({
    Key? key,
    required this.color,
    required this.shapeBorderType,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(LayoutConstants.spaceL),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: shapeBorderType.border as OutlinedBorder?,
          backgroundColor: color,
        ),
        onPressed: onPressed ?? () {},
        child: ColoredText(
          color: color,
          text: text ?? shapeBorderType.name,
        ),
      ),
    );
  }
}
