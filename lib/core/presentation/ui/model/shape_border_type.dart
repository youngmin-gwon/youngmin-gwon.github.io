import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/ui/constants.dart';

enum ShapeBorderType {
  beveled(ContinuousRectangleBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(LayoutConstants.space2XL)))),
  continuous(BeveledRectangleBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(LayoutConstants.space2XL)))),
  rounded(RoundedRectangleBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(LayoutConstants.space2XL)))),
  stadium(CircleBorder()),
  ;

  const ShapeBorderType(this.border);

  final ShapeBorder border;
}
