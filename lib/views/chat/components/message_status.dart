import 'package:flutter/material.dart';

import '../../../constants.dart';

class MessageStatusComponent extends StatelessWidget {
  const MessageStatusComponent({
    Key? key,
    required this.isMyMessage,
    required this.status,
  }) : super(key: key);

  final bool isMyMessage;
  final String status;

  IconData get iconStatusMsg {
    return status == 'reading'
        ? Icons.check_circle
        : status == 'error'
            ? Icons.cancel
            : Icons.done;
  }

  Color get colorStatusMsg {
    return status == 'reading'
        ? primaryColor
        : status == 'error'
            ? dangerColor
            : grayColor;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (isMyMessage)
          Icon(
            iconStatusMsg,
            color: colorStatusMsg,
            size: 16,
          ),
        const SizedBox(width: 4),
        Text(
          '9:32 am',
          style: const TextStyle(
            fontSize: 12,
            color: grayColor,
          ),
          textAlign: isMyMessage ? TextAlign.right : TextAlign.left,
        ),
      ],
    );
  }
}
