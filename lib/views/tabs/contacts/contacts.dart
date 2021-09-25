import 'package:bubble_chat/constants.dart';
import 'package:flutter/material.dart';

import '../../../dummy_data/contacts_data.dart';
import 'components/contact_item.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactsList.length,
      itemBuilder: (context, index) => Column(
        children: [
          ContactItemComponent(
            image: contactsList[index]['image'],
            isActive: contactsList[index]['active'],
            phone: contactsList[index]['phone'],
            user: contactsList[index]['user'],
          ),
          const SizedBox(height: defaultSpacing),
        ],
      ),
    );
  }
}
