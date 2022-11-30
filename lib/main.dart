import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:ui_design_1/utils/constants.dart';
import 'package:flutter/services.dart';

import 'app_router/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Get an instance of the App Router
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1700,
        minWidth: 300,
        defaultScale: true,
        breakpoints: [
          // Define the breakpoints
          const ResponsiveBreakpoint.resize(300, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(1300, name: DESKTOP)
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
        iconTheme: const IconThemeData(
          color: colorIcon,
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
