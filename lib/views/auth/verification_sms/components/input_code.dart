import 'package:flutter/material.dart';

import '../../../../constants.dart';

class InputCodeComponent extends StatelessWidget {
  const InputCodeComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 80,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(color: grayColor, fontSize: 24),
        decoration: InputDecoration(
          filled: true,
          fillColor:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? lightColor
                  : secondaryColor,
          border: InputBorder.none,
          hintText: '0',
          hintStyle: const TextStyle(
            color: grayColor,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(defaultSpacing / 2),
          ),
        ),
      ),
    );
  }
}
