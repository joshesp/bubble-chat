import 'package:flutter/material.dart';

class ImageLogoComponent extends StatelessWidget {
  const ImageLogoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MediaQuery.of(context).platformBrightness == Brightness.light
          ? 'assets/images/logo-light.png'
          : 'assets/images/logo-dark.png',
      width: 230,
    );
  }
}
