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
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (
            BuildContext context,
            bool innerBoxIsScrolled,
          ) =>
              [
            SliverAppBar(
              floating: true,
              expandedHeight: 240,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Title'),
                background: Image.asset(itemData['image']),
              ),
              backgroundColor: Colors.transparent,
            )
          ],
          body: HouseInformationList(itemData: itemData),
          //body:
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
