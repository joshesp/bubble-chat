import 'package:flutter/material.dart';

import 'views/intro/intro.dart';

Map<String, Widget Function(BuildContext)> routesList = {
  '/': (ctx) => const IntroView(),
  IntroView.routeName: (ctx) => const IntroView()
};
