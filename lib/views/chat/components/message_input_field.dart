import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'mic_icon.dart';

class MessageInputFieldComponent extends StatelessWidget {
  const MessageInputFieldComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: defaultSpacing),
        Expanded(
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: defaultSpacing / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(defaultSpacing),
            ),
            child: Row(
              children: [
                IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.sentiment_satisfied_alt,
                    color: primaryColor,
                  ),
                  color: primaryColor,
                ),
                const Expanded(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Type here...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: grayColor,
                      ),
                    ),
                    style: TextStyle(color: grayColor, fontSize: 16),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  alignment: Alignment.centerRight,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultSpacing),
        const MicIconComponent(),
        const SizedBox(width: defaultSpacing),
      ],
    );
  }
}
