import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../dummy_data/messages_data.dart';
import '../../helpers/app_bar.dart';
import 'components/app_bar.dart';
import 'components/bubble_container.dart';
import 'components/message_input_field.dart';
import 'components/time_history.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);
  static const routeName = 'chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        const AppBarComponent(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(defaultSpacing),
                child: ListView.builder(
                  itemCount: chatMessages.length,
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      TimeHistoryComponent(day: chatMessages[index]['date']),
                      const SizedBox(height: defaultSpacing),
                      ...chatMessages[index]['messages'].map((message) =>
                          BubbleContainerComponent(message: message)),
                    ],
                  ),
                ),
              ),
            ),
            const MessageInputFieldComponent(),
          ],
        ),
      ),
    );
  }
}
