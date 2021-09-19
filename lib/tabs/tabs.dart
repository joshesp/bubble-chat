import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);
  static const routeName = '/tabs';

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int _currPageIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'title': 'Messages', 'page': const Center()},
    {'title': 'Contacts', 'page': const Center()},
    {'title': 'My profile', 'page': const Center()}
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
      Icon(
        Icons.account_circle,
        color: _currPageIndex == 2 ? Colors.white : primaryColor,
        size: 28,
      )
    ];
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
