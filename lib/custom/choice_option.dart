import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ChoiceOption extends StatelessWidget {
  const ChoiceOption({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorGrey.withAlpha(25),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 11,
        ),
        child: Text(
          text,
          style: themeData.textTheme.headline5,
        ),
      ),
    );
  }
}
