import 'package:flutter/material.dart';

class MessageAudioComponent extends StatelessWidget {
  const MessageAudioComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_arrow,
          size: 26,
          color: Colors.white,
        ),
        Expanded(
          child: Slider(
            value: 4,
            min: 0,
            max: 10,
            activeColor: Colors.white,
            inactiveColor: Colors.white.withOpacity(0.3),
            onChanged: (_) {},
          ),
        ),
        const Text(
          '0:56',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
