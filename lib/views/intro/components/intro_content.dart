import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
          height: (230 / 812.0) * MediaQuery.of(context).size.height,
        ),
        const SizedBox(height: defaultSpacing),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
