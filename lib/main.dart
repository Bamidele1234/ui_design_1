import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design_1/screens/LandingPage.dart';
import 'package:ui_design_1/utils/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      theme: ThemeData(
        primaryColor: colorWhite,
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
        fontFamily: "Montserrat",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: colorDarkBlue,
        ),
      ),
      home: const LandingPage(),
    );
  }
}
