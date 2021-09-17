import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  static const routeName = '/intro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro'),
      ),
      body: const Center(
        child: Text('Hi!'),
      ),
    );
  }
}
