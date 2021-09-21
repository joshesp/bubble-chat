import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../components/user_avatar/user_avatar.dart';
import '../../constants.dart';
import 'contacts/contacts.dart';
import 'messages/messages.dart';
import 'profile/profile.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);
  static const routeName = '/tabs';

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int _currPageIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'title': 'Messages', 'page': const MessagesView()},
    {'title': 'Contacts', 'page': const ContactsView()},
    {'title': 'My profile', 'page': const ProfileView()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultSpacing),
          child: _pages[_currPageIndex]['page'],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? lightColor
            : secondaryColor,
        buttonBackgroundColor: primaryColor,
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Colors.white
                : darkColor,
        items: itemsTab,
        onTap: (index) {
          setState(() {
            _currPageIndex = index;
          });
        },
      ),
      floatingActionButton: floatButtom(),
    );
  }

  List<Widget> get itemsTab {
    return [
      Icon(
        Icons.forum,
        color: _currPageIndex == 0 ? Colors.white : primaryColor,
        size: 28,
      ),
      Icon(
        Icons.people,
        color: _currPageIndex == 1 ? Colors.white : primaryColor,
        size: 28,
      ),
      UserAvatarComponent(
        imageUrl: 'assets/images/user-pics/image-8.png',
        radius: 15,
        showBorder: _currPageIndex != 2,
      )
    ];
  }

  FloatingActionButton floatButtom() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        _currPageIndex == 0
            ? Icons.chat_bubble
            : _currPageIndex == 1
                ? Icons.person_add
                : Icons.logout,
        color: Colors.white,
      ),
      backgroundColor: _currPageIndex == 2 ? dangerColor : primaryColor,
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text(_pages[_currPageIndex]['title']),
      elevation: 0,
      foregroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? secondaryColor
              : Colors.white,
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.white
              : darkColor,
      titleTextStyle: Theme.of(context).textTheme.headline5,
      centerTitle: false,
    );
  }
}
