import 'package:flutter/material.dart';
import 'package:ui_design_1/custom/border_box.dart';
import 'package:ui_design_1/custom/option_button.dart';
import 'package:ui_design_1/utils/constants.dart';
import 'package:ui_design_1/utils/custom_functions.dart';
import 'package:ui_design_1/utils/sample_data.dart';
import 'package:ui_design_1/utils/widget_functions.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double spacing = 15;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(spacing),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BorderBox(
                          width: kBoxSize,
                          height: kBoxSize,
                          child: Icon(
                            Icons.menu_rounded,
                            color: colorBlack,
                            size: kIconSize,
                          ),
                        ),
                        BorderBox(
                          width: kBoxSize,
                          height: kBoxSize,
                          child: Icon(
                            Icons.settings_outlined,
                            color: colorBlack,
                            size: kIconSize,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: spacing),
                    child: Text(
                      'City',
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.only(left: spacing),
                    child: Text(
                      'San Francisco',
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: spacing),
                    child: Divider(
                      height: spacing,
                      color: colorGrey.withAlpha(80),
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.only(left: spacing),
                    child: SingleChildScrollView(
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
                  ),
                  addVerticalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: spacing),
                      child: ListView.builder(
                        itemCount: reData.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: reData[index],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              const Positioned(
                bottom: 17,
                child: OptionButton(
                  text: 'Map View',
                  icon: Icons.map,
                  width: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
      padding: const EdgeInsets.symmetric(horizontal: 3),
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

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({
    Key? key,
    this.itemData,
  }) : super(key: key);

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(itemData['image']),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: BorderBox(
                  height: kBoxSize,
                  width: kBoxSize,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: kIconSize,
                  ),
                ),
              )
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text(
                formatCurrency(itemData['amount']),
                style: themeData.textTheme.headline1,
              ),
              addHorizontalSpace(10),
              Text(
                "${itemData['address']}",
                style: themeData.textTheme.bodyText2,
              ),
            ],
          ),
          addVerticalSpace(10),
          Text(
            "${itemData['bedrooms']} bedrooms / ${itemData['bathrooms']} bathrooms / ${itemData['area']} sqft",
            style: themeData.textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
