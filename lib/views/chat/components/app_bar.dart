import 'package:flutter/material.dart';

import '../../../components/user_avatar/user_avatar.dart';
import '../../../constants.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserAvatarComponent(
          imageUrl: 'assets/images/user-pics/image-3.png',
          radius: 18,
          showStatus: true,
          isActive: true,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Juan Pablito',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? secondaryColor
                        : Colors.white,
                  ),
            ),
            const Text(
              'Online',
              style: TextStyle(color: successColor, fontSize: 13),
            ),
          ],
        )
      ],
    );
  }
}
