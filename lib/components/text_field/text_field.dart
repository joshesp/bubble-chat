import 'package:flutter/material.dart';

import '../../constants.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    Key? key,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? lightColor
                : secondaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultSpacing),
            ),
          ),
        ),
        Row(
          children: [
            const SizedBox(width: defaultSpacing),
            Expanded(
              child: TextField(
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: const TextStyle(
                    color: grayColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: const TextStyle(color: grayColor, fontSize: 16),
              ),
            ),
            const SizedBox(width: defaultSpacing),
            Icon(
              isPassword ? Icons.visibility : Icons.done_all,
              color: primaryColor.withOpacity(0.3),
            ),
            const SizedBox(width: defaultSpacing),
          ],
        )
      ],
    );
  }
}
