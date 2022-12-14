

import 'package:flutter/material.dart';

import '../component/color.dart';
import '../component/decoration.dart';
import '../component/size.dart';

class ChipCard extends StatelessWidget {
  const ChipCard(
      {Key? key,
      this.child,
      this.bgColor,
      this.radius,
      this.borderColor,
      this.paddingHorizontal,
      this.paddingVertical,
      this.padding})
      : super(key: key);
  final child;
  final Color? bgColor;
  final double? radius;
  final Color? borderColor;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: boxDecoration(
          color: bgColor,
          radius: radius ?? s10,
          borderColor: borderColor ?? black,
        ),
        padding: EdgeInsets.symmetric(
            vertical: padding ?? paddingVertical ?? 0,
            horizontal: padding ?? paddingHorizontal ?? 0),
        child: child);
  }
}
