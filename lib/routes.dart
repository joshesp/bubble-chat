import 'package:flutter/material.dart';

import 'views/auth/sign_in/sign_in.dart';
import 'views/intro/intro.dart';

Map<String, Widget Function(BuildContext)> routesList = {
  '/': (ctx) => const IntroView(),
  IntroView.routeName: (ctx) => const IntroView(),
  SignInView.routeName: (ctx) => const SignInView()
};
