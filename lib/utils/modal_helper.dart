import 'package:bubble_chat/constants.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

Future modalBottomSheet(BuildContext ctx, Widget viewWidget) {
  return showModalBottomSheet(
      context: ctx,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: decorationContainerModalSheet.copyWith(
            color: MediaQuery.of(ctx).platformBrightness == Brightness.light
                ? Colors.white
                : darkColor,
          ),
          child: Padding(
            padding: paddingModalSheet,
            child: viewWidget,
          ),
        );
      });
}
