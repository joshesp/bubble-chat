import 'package:bubble_chat/constants.dart';
import 'package:flutter/material.dart';

class InfoUserComponent extends StatelessWidget {
  const InfoUserComponent({
    Key? key,
    required this.textLeft,
    required this.textRight,
  }) : super(key: key);
  final String textLeft;
  final String textRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textLeft,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: grayColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
          Text(
            textRight,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? secondaryColor
                      : Colors.white,
                ),
          )
        ],
      ),
    );
  }
}
