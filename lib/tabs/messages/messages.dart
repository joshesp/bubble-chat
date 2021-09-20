import 'package:bubble_chat/dummy_data/messages_data.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/activity_list.dart';
import 'components/message_item.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Activity',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: grayColor),
          ),
        ),
        const SizedBox(height: defaultSpacing),
        const ActivityListComponent(),
        const SizedBox(height: defaultSpacing),
        Expanded(
          child: ListView.builder(
            itemCount: messagesListData.length,
            itemBuilder: (context, index) => InkWell(
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: MessageItemComponent(
                  image: messagesListData[index]['image'],
                  user: messagesListData[index]['user'],
                  message: messagesListData[index]['lastMessage'],
                  messagesNoReading: messagesListData[index]
                      ['messagesNoReading'],
                  isActive: messagesListData[index]['active'],
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
