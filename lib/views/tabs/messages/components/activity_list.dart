import 'package:flutter/material.dart';

import '../../../../components/user_avatar/user_avatar.dart';
import '../../../../constants.dart';
import '../../../../dummy_data/messages_data.dart';
import '../../../../helpers/strings_helper.dart';

class ActivityListComponent extends StatelessWidget {
  const ActivityListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: defaultSpacing / 2),
                child: Column(
                  children: [
                    UserAvatarComponent(
                      imageUrl: lastActivityList[index]['image'],
                      radius: 28,
                      showBorder: true,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '@' +
                          truncateWithEllipsis(
                              5, lastActivityList[index]['username']),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              onTap: () {});
        },
        itemCount: lastActivityList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
