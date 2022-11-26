import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    Key? key,
    required this.icon,
    required this.action,
  }) : super(key: key);

  final IconData icon;
  final Function() action;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 5,
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: action,
          icon: Icon(
            icon,
            size: kIconSize,
          ),
        ),
      ),
    );
  }
}
