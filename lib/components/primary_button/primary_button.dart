import 'package:flutter/material.dart';

import '../../constants.dart';

class PrimaryButtonComponent extends StatelessWidget {
  const PrimaryButtonComponent({
    Key? key,
    required this.text,
    required this.actionPressed,
    this.size = double.infinity,
  }) : super(key: key);

  final String text;
  final VoidCallback actionPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: actionPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: MediaQuery.of(context).platformBrightness == Brightness.light
            ? secondaryColor
            : primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultSpacing)),
        ),
        minimumSize: Size(size, 40),
      ),
    );
  }
}
