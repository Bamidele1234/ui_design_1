import 'package:flutter/material.dart';

const colorBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey = Color.fromRGBO(141, 141, 141, 1.0);

const colorWhite = Colors.white;
const colorDarkBlue = Color.fromRGBO(20, 25, 45, 1.0);
const colorIcon = Color.fromRGBO(20, 25, 45, 0.75);

const double kBoxSize = 45;
const double kIconSize = 25;

/// Value = 18
const double kSpacing = 20;

const kFadeDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Colors.transparent,
      colorWhite,
    ],
  ),
);

final kButtonStyle = ElevatedButton.styleFrom(
  primary: colorDarkBlue,
  elevation: 12,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(28),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
);

const TextTheme textThemeDefault = TextTheme(
  headline1:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
    color: colorBlack,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  bodyText2: TextStyle(
    color: colorGrey,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  subtitle1: TextStyle(
    color: colorBlack,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
  subtitle2: TextStyle(
    color: colorGrey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
);

const TextTheme textThemeSmall = TextTheme(
  headline1:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
    color: colorBlack,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  bodyText2: TextStyle(
    color: colorGrey,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  subtitle1: TextStyle(
    color: colorBlack,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  ),
  subtitle2: TextStyle(
    color: colorGrey,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  ),
);
