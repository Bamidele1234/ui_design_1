import 'package:auto_route/auto_route.dart';
import 'package:ui_design_1/screens/ItemPage.dart';

import '../screens/LandingPage.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: LandingPage, initial: true),
    CustomRoute(
      path: ItemPage.tag,
      page: ItemPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 150,
    ),
  ],
)
class $AppRouter {}
