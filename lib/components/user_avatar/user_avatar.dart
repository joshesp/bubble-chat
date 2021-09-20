import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserAvatarComponent extends StatelessWidget {
  const UserAvatarComponent({
    Key? key,
    required this.imageUrl,
    required this.radius,
    this.showBorder = false,
    this.showStatus = false,
  }) : super(key: key);

  final String imageUrl;
  final double radius;
  final bool showBorder;
  final bool showStatus;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: primaryColor,
          radius: radius + (showBorder ? 2 : 0),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
        if (showStatus)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                  color: successColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 2,
                  )),
            ),
          ),
      ],
    );
  }
}
