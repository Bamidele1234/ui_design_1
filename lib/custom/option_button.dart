import 'package:flutter/material.dart';
import 'package:ui_design_1/utils/constants.dart';
import 'package:ui_design_1/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.width,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: kButtonStyle,
      child: Row(
        children: [
          Icon(icon, color: colorWhite),
          addHorizontalSpace(10),
          Text(
            text,
            style: const TextStyle(color: colorWhite),
          )
        ],
      ),
    );
  }
}
