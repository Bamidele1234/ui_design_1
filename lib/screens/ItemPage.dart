import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/custom_functions.dart';
import '../utils/widget_functions.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //pinned: true, Stays at the top and let the contents scroll beneath it
            //floating: true, Scrolls away as the user scrolls, but comes back when the user scrolls back up
            //snap: true, Scrolls away, but sharply returns back when the user scrolls up
            backgroundColor: colorGrey.withAlpha(25),
          ),
          // HouseInformationList(itemData: itemData)
        ],
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    formatCurrency(itemData['amount']),
                    style: themeData.textTheme.headline1,
                  ),
                  addVerticalSpace(10),
                  Text(
                    "${itemData['address']}",
                    style: themeData.textTheme.bodyText2,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
