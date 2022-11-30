import 'package:flutter/material.dart';
import 'package:ui_design_1/utils/widget_functions.dart';

import '../utils/constants.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({
    Key? key,
    required this.value,
    required this.object,
  }) : super(key: key);

  final String value;
  final String object;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: kSpacing + 3),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorGrey.withAlpha(40),
                width: 2,
              ),
            ),
            width: 65,
            height: 55,
            child: Center(
              child: Text(
                value,
                style: themeData.textTheme.headline3,
              ),
            ),
          ),
          addVerticalSpace(10),
          Text(
            object,
            style: themeData.textTheme.headline5,
          )
        ],
      ),
    );
  }
}
