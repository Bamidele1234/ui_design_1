import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

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
      top: 12,
      right: 12,
      child: Material(
        color: Colors.transparent,
        child: LikeButton(
          likeBuilder: (bool isLiked) {
            return Icon(
              isLiked ? Icons.favorite : icon,
              color: isLiked ? Colors.redAccent : colorIcon,
              size: kIconSize,
            );
          },
        ),
      ),
    );
  }
}
