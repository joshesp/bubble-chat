import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserAvatarComponent extends StatelessWidget {
  const UserAvatarComponent(
      {Key? key,
      required this.imageUrl,
      required this.radius,
      this.showBorder = false,
      this.showStatus = false,
      this.isActive = false,
      this.icon,
      this.onAction})
      : super(key: key);

  final String imageUrl;
  final double radius;
  final bool showBorder;
  final bool showStatus;
  final bool isActive;
  final IconData? icon;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundColor: primaryColor,
          radius: radius + (showBorder ? 2 : 0),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
        if (showStatus && onAction == null)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: isActive ? successColor : dangerColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  width: 2,
                ),
              ),
            ),
          ),
        if (onAction != null)
          Positioned(
            right: -4,
            bottom: -4,
            child: Container(
              width: radius * 0.9,
              height: radius * 0.9,
              decoration: BoxDecoration(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? lightColor
                    : secondaryColor,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: onAction,
                child: Icon(
                  icon ?? Icons.photo_camera,
                  color: primaryColor,
                  size: 28,
                ),
              ),
            ),
          )
      ],
    );
  }
}
