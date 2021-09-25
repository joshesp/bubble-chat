import 'package:flutter/material.dart';

import '../../../constants.dart';

class MicIconComponent extends StatelessWidget {
  const MicIconComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        icon: const Icon(
          Icons.mic,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
