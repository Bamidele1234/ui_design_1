import 'package:flutter/material.dart';
import 'package:ui_design_1/custom/house_info.dart';
import 'package:ui_design_1/utils/widget_functions.dart';

import '../custom/border_box.dart';
import '../custom/my_icon_button.dart';
import '../custom/option_button.dart';
import '../utils/constants.dart';
import '../utils/custom_functions.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  final dynamic itemData;

  static const tag = '/itemPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            NestedScrollView(
              headerSliverBuilder: (
                BuildContext context,
                bool innerBoxIsScrolled,
              ) =>
                  [
                SliverAppBar(
                  //pinned: true,
                  iconTheme: const IconThemeData(
                    color: colorIcon,
                    size: kIconSize,
                  ),
                  expandedHeight: 160,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.only(
                      left: 40,
                      bottom: 10,
                    ),
                    background: DecoratedBox(
                      position: DecorationPosition.foreground,
                      decoration: kFadeDecoration,
                      child: Hero(
                        tag: itemData['image'],
                        child: Stack(
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                itemData['image'],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              onDoubleTap: () {},
                            ),
                            MyIconButton(
                              icon: Icons.favorite_border_outlined,
                              action: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: colorWhite,
                ),
              ],
              body: HouseInformationList(itemData: itemData),
              //body:
            ),
            Positioned(
              bottom: 15,
              child: Row(
                children: [
                  const OptionButton(
                    text: 'Message',
                    icon: Icons.message,
                    width: 10,
                  ),
                  addHorizontalSpace(15),
                  const OptionButton(
                    text: 'Call',
                    icon: Icons.call,
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HouseInformationList extends StatelessWidget {
  const HouseInformationList({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kSpacing,
              vertical: kSpacing,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formatCurrency(itemData['amount']),
                      style: themeData.textTheme.headline1,
                    ),
                    //addVerticalSpace(5),
                    Text(
                      "${itemData['address']}",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ],
                ),
                BorderBox(
                  height: 40,
                  width: 110,
                  child: Text(
                    '20 Hours ago',
                    style: themeData.textTheme.headline5,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kSpacing,
              right: kSpacing,
              bottom: kSpacing,
            ),
            child: Text(
              'House Information',
              style: themeData.textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                itemData['area'].toString(),
                itemData['bedrooms'].toString(),
                itemData['bathrooms'].toString(),
                itemData['garage'].toString(),
              ]
                  .map((filter) => HouseInfo(
                        value: filter,
                        object: 'area',
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              kSpacing,
              kSpacing,
              kSpacing,
              2,
            ),
            child: Text(
              itemData['description'],
              style: themeData.textTheme.bodyText2,
            ),
          )
        ],
      ),
    );
  }
}
