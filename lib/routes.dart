import 'package:flutter/material.dart';

import 'tabs/tabs.dart';
import 'views/auth/request_password/request_password.dart';
import 'views/auth/sign_in/sign_in.dart';
import 'views/auth/sign_up/sign_up.dart';
import 'views/auth/update_password/update_password.dart';
import 'views/intro/intro.dart';

Map<String, Widget Function(BuildContext)> routesList = {
  '/': (ctx) => const IntroView(),
  IntroView.routeName: (ctx) => const IntroView(),
  SignInView.routeName: (ctx) => const SignInView(),
  SignUpView.routeName: (ctx) => const SignUpView(),
  RequestPasswordView.routeName: (ctx) => const RequestPasswordView(),
  UpdatePasswordView.routeName: (ctx) => const UpdatePasswordView(),
  TabsView.routeName: (ctx) => const TabsView()
};
