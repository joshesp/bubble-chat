import 'package:flutter/material.dart';

import '../../../components/user_avatar/user_avatar.dart';
import '../../../constants.dart';

class MessageItemComponent extends StatelessWidget {
  const MessageItemComponent({
    Key? key,
    required this.image,
    required this.user,
    required this.message,
    required this.messagesNoReading,
    required this.isActive,
  }) : super(key: key);

  final String image;
  final String user;
  final String message;
  final int messagesNoReading;
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
                message,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: messagesNoReading == 0 ? grayColor : primaryColor),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FittedBox(
              child: Text(
                messagesNoReading == 0 ? '9 ago' : '1 min.',
                style: const TextStyle(
                  color: grayColor,
                  fontSize: 13,
                ),
              ),
            ),
            if (messagesNoReading != 0)
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? lightColor
                      : secondaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    messagesNoReading.toString(),
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
          ],
        ),
      ],
    );
  }
}
