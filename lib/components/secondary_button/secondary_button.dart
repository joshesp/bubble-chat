import 'package:flutter/material.dart';

import '../../constants.dart';

class SecondaryButtonComponent extends StatelessWidget {
  const SecondaryButtonComponent({
    Key? key,
    required this.text,
    required this.actionPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback actionPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: actionPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? secondaryColor
              : primaryColor,
        ),
      ),
    );
  }
}
