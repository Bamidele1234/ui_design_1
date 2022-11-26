import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_1/app_router/router.gr.dart';

import '../utils/constants.dart';
import '../utils/custom_functions.dart';
import '../utils/widget_functions.dart';
import 'border_box.dart';

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
          GestureDetector(
            onTap: () => context.router.push(
              ItemPageRoute(itemData: itemData),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: itemData['image'],
                    child: Image.asset(itemData['image']),
                  ),
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
