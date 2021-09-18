import 'package:flutter/material.dart';

import '../../constants.dart';

class PrimaryButtonComponent extends StatelessWidget {
  const PrimaryButtonComponent({
    Key? key,
    required this.text,
    required this.actionPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback actionPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: actionPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: MediaQuery.of(context).platformBrightness == Brightness.light
            ? secondaryColor
            : primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultSpacing)),
        ),
        minimumSize: const Size(double.infinity, 40),
      ),
    );
  }
}
