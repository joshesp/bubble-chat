import 'package:bubble_chat/components/primary_button/primary_button.dart';
import 'package:bubble_chat/components/user_avatar/user_avatar.dart';
import 'package:bubble_chat/constants.dart';
import 'package:flutter/material.dart';

import 'components/info_user.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool iamActive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultSpacing * 3),
        UserAvatarComponent(
          imageUrl: 'assets/images/user-pics/image-8.png',
          radius: 50,
          showBorder: true,
          onAction: () {},
        ),
        const SizedBox(height: defaultSpacing / 2),
        Text(
          '@my_username',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? secondaryColor
                    : Colors.white,
              ),
        ),
        Switch(
          activeColor: successColor,
          activeTrackColor: grayColor,
          inactiveThumbColor: dangerColor,
          inactiveTrackColor: grayColor,
          value: iamActive,
          onChanged: (value) {
            setState(() {
              iamActive = value;
            });
          },
        ),
        const SizedBox(height: defaultSpacing * 4),
        const InfoUserComponent(
          textLeft: 'Full name',
          textRight: 'Amber Han',
        ),
        const InfoUserComponent(
          textLeft: 'Location',
          textRight: 'New York, NYC',
        ),
        const InfoUserComponent(
          textLeft: 'Phone',
          textRight: '+55 00000000',
        ),
        const InfoUserComponent(
          textLeft: 'Email',
          textRight: 'amber.han@correo.com',
        ),
        Align(
          alignment: Alignment.centerRight,
          child: PrimaryButtonComponent(
            text: 'Edit',
            size: 150,
            actionPressed: () {},
          ),
        ),
      ],
    );
  }
}
