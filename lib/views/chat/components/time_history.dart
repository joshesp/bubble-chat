import 'package:flutter/material.dart';

import '../../../constants.dart';

class TimeHistoryComponent extends StatelessWidget {
  const TimeHistoryComponent({Key? key, required this.day}) : super(key: key);

  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: defaultSpacing / 2,
        horizontal: defaultSpacing,
      ),
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? lightColor
            : secondaryColor,
        borderRadius: BorderRadius.circular(defaultSpacing),
      ),
      child: Text(
        day,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: grayColor,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
