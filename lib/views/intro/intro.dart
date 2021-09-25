import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../dummy_data/intro_data.dart';
import '../auth/sign_in/sign_in.dart';
import 'components/intro_content.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  static const routeName = '/intro';

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultSpacing),
          child: Column(
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.headline5),
              const Spacer(flex: 2),
              Expanded(
                flex: 5,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentSlide = index;
                    });
                  },
                  itemCount: introData.length,
                  itemBuilder: (ctx, index) => IntroContent(
                    image: introData[index]['image'] ?? '',
                    text: introData[index]['text'] ?? '',
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  introData.length,
                  (index) => buildDot(index),
                ),
              ),
              const SizedBox(height: defaultSpacing),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SignInView.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      (introData.length - 1) == currentSlide
                          ? 'Continue'
                          : 'Skip',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                    const Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: defaultDuration,
      margin: const EdgeInsets.symmetric(horizontal: defaultSpacing / 4),
      width: currentSlide == index ? 25 : 10,
      height: 10,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(currentSlide == index ? 1 : 0.5),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
