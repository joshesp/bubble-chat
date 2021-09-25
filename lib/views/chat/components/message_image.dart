import 'package:flutter/material.dart';

class MessageImageComponent extends StatelessWidget {
  const MessageImageComponent({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(url),
    );
  }
}
