import 'package:bubble_chat/components/user_avatar/user_avatar.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ContactItemComponent extends StatelessWidget {
  const ContactItemComponent({
    Key? key,
    required this.image,
    required this.user,
    required this.phone,
    required this.isActive,
  }) : super(key: key);

  final String image;
  final String user;
  final String phone;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatarComponent(
          imageUrl: image,
          radius: 34,
          showStatus: true,
          isActive: isActive,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                phone,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: grayColor),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? lightColor
                : secondaryColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
