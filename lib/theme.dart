import 'package:flutter/material.dart';

import 'constants.dart';

const appBarTheme = AppBarTheme(elevation: 0);
const textStyleLightTheme = TextStyle(
  fontFamily: 'Comfortaa',
  color: secondaryColor,
);
const textStyleDarkTheme = TextStyle(
  fontFamily: 'Comfortaa',
  color: Colors.white,
);

const decorationContainerModalSheet = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(defaultSpacing),
    topRight: Radius.circular(defaultSpacing),
  ),
);

const paddingModalSheet = EdgeInsets.fromLTRB(
  defaultSpacing,
  defaultSpacing * 2,
  defaultSpacing,
  defaultSpacing / 2,
);

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: lightColor),
    textTheme: TextTheme(
      headline4: textStyleLightTheme,
      headline5: textStyleLightTheme.copyWith(fontWeight: FontWeight.w700),
      headline6: textStyleLightTheme,
      bodyText1: textStyleLightTheme.copyWith(fontSize: 16.0),
      bodyText2: textStyleLightTheme,
      button: textStyleLightTheme,
      caption: textStyleLightTheme,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      error: dangerColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: primaryColor,
      selectedIconTheme: IconThemeData(color: primaryColor),
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkColor,
    iconTheme: const IconThemeData(color: secondaryColor),
    textTheme: TextTheme(
      headline1: textStyleDarkTheme,
      headline2: textStyleDarkTheme,
      subtitle1: textStyleDarkTheme,
      bodyText1: textStyleDarkTheme.copyWith(fontSize: 16.0, color: grayColor),
      bodyText2: textStyleDarkTheme,
      button: textStyleDarkTheme,
      caption: textStyleDarkTheme,
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      error: dangerColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: secondaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: primaryColor,
      selectedIconTheme: IconThemeData(color: primaryColor),
    ),
  );
}
