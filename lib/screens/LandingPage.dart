import 'package:flutter/material.dart';
import 'package:ui_design_1/custom/border_box.dart';
import 'package:ui_design_1/utils/constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double spacing = 15;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: spacing),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: spacing),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BorderBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.menu_rounded,
                          color: colorBlack,
                        ),
                      ),
                      BorderBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.settings_outlined,
                          color: colorBlack,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'City',
                  style: themeData.textTheme.bodyText2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
