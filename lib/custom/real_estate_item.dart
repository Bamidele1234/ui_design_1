import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_1/app_router/router.gr.dart';
import 'package:ui_design_1/custom/my_icon_button.dart';

import '../utils/widget_functions.dart';

class RealEstateItem extends StatefulWidget {
  const RealEstateItem({
    Key? key,
    this.itemData,
  }) : super(key: key);

  final dynamic itemData;

  @override
  State<RealEstateItem> createState() => _RealEstateItemState();
}

class _RealEstateItemState extends State<RealEstateItem> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => context.router.push(
            ItemPageRoute(itemData: widget.itemData),
          ),
          child: Hero(
            tag: widget.itemData['image'],
            child: Stack(
              children: [
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(widget.itemData['image']),
                  ),
                  onDoubleTap: () {},
                ),
                MyIconButton(
                  icon: Icons.favorite_border_outlined,
                  action: () {},
                ),
              ],
            ),
          ),
        ),
        addVerticalSpace(15),
        Row(
          children: [
            Text(
              MediaQuery.of(context).size.toString(),
              //formatCurrency(widget.itemData['amount']),
              style: themeData.textTheme.headline1,
            ),
            addHorizontalSpace(10),
          ],
        ),
        addVerticalSpace(10),
        Text(
          "${widget.itemData['bedrooms']} bedrooms / ${widget.itemData['bathrooms']} bathrooms / ${widget.itemData['area']} sqft",
          style: themeData.textTheme.headline5,
        ),
      ],
    );
  }
}
