import 'package:flutter/material.dart';
import 'package:ui_design_1/custom/option_button.dart';
import 'package:ui_design_1/utils/constants.dart';
import 'package:ui_design_1/utils/sample_data.dart';
import 'package:ui_design_1/utils/widget_functions.dart';

import '../custom/choice_option.dart';
import '../custom/real_estate_item.dart';

extension ContextExtension on BuildContext {
  int axisCount() {
    double width = MediaQuery.of(this).size.width;
    if (width > 610 && width < 1200) {
      return 2;
    } else if (width >= 1200) {
      return 3;
    } else {
      return 1;
    }
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kSpacing - 10,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_rounded,
                          size: kIconSize,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings_outlined,
                          size: kIconSize,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kSpacing),
                  child: Text(
                    'City',
                    style: themeData.textTheme.bodyText2,
                  ),
                ),
                addVerticalSpace(10),
                Padding(
                  padding: const EdgeInsets.only(left: kSpacing),
                  child: Text(
                    'San Francisco',
                    style: themeData.textTheme.headline1,
                  ),
                ),
                addVerticalSpace(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kSpacing),
                  child: Divider(
                    thickness: 2,
                    height: kSpacing,
                    color: colorGrey.withAlpha(80),
                  ),
                ),
                addVerticalSpace(10),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      "<\$220,000",
                      "For Sale",
                      "3-4 Beds",
                      ">1000 sqft"
                    ].map((filter) => ChoiceOption(text: filter)).toList(),
                  ),
                ),
                addVerticalSpace(10),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kSpacing - 5),
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        scrollbars: false,
                        physics: const BouncingScrollPhysics(),
                      ),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: context.axisCount(),
                          crossAxisSpacing: 12,
                        ),
                        itemCount: reData.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: reData[index],
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Positioned(
              bottom: 15,
              child: OptionButton(
                text: 'Map View',
                icon: Icons.map,
                width: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
