import 'package:flutter/material.dart';
import 'package:ui_design_1/utils/constants.dart';

class BorderBox extends StatelessWidget {
  const BorderBox({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(0),
    required this.width,
    required this.height,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorGrey.withAlpha(40),
          width: 2,
        ),
      ),
      padding: padding,
      child: Center(
        child: child,
      ),
    );
  }
}
