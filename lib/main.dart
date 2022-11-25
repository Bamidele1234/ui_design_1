import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:ui_design_1/utils/constants.dart';

import 'app_router/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Get an instance of the App Router
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1700,
        minWidth: 350,
        defaultScale: true,
        breakpoints: [
          // Define the breakpoints
          const ResponsiveBreakpoint.resize(350, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(600, name: TABLET),
          const ResponsiveBreakpoint.resize(800, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colorWhite,
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
        fontFamily: "Montserrat",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: colorDarkBlue,
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
