import 'package:flutter/material.dart';

import '../constants.dart';

AppBar appBar(BuildContext context, Widget title) {
  return AppBar(
    title: title,
    elevation: 0,
    foregroundColor:
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? secondaryColor
            : Colors.white,
    backgroundColor:
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : darkColor,
    centerTitle: false,
  );
}
