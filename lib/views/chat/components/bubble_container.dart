import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'message_audio.dart';
import 'message_image.dart';
import 'message_status.dart';
import 'message_text.dart';
import 'message_video.dart';

class BubbleContainerComponent extends StatelessWidget {
  const BubbleContainerComponent({Key? key, required this.message})
      : super(key: key);
  final Map<String, dynamic> message;

  Widget get messageContent {
    switch (message['type']) {
      case 'text':
        return MessageTextComponent(text: message['message']);
      case 'image':
        return MessageImageComponent(url: message['urlMedia']);
      case 'audio':
        return const MessageAudioComponent();
      case 'video':
        return const MessageVideoComponent();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: message['userId'] == 8
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(defaultSpacing / 2),
          margin: const EdgeInsets.only(bottom: defaultSpacing / 2),
          width: MediaQuery.of(context).size.width * 0.55,
          decoration: BoxDecoration(
            color: message['userId'] == 8 ? secondaryColor : primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(12),
                topRight: const Radius.circular(12),
                bottomRight: Radius.circular(message['userId'] == 8 ? 0 : 12),
                bottomLeft: Radius.circular(message['userId'] == 8 ? 12 : 0)),
          ),
          child: messageContent,
        ),
        MessageStatusComponent(
          status: message['status'],
          isMyMessage: message['userId'] == 8,
        ),
      ],
    );
  }
}
