import 'package:flutter/material.dart';

import '../../../components/primary_button/primary_button.dart';
import '../../../components/secondary_button/secondary_button.dart';
import '../../../components/text_field/text_field.dart';
import '../../../constants.dart';
import '../components/image_logo.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);
  static const routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultSpacing),
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: ImageLogoComponent(),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign in',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const Spacer(),
              const TextFieldComponent(hintText: 'Phone number'),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              const TextFieldComponent(
                hintText: 'Password',
                isPassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: grayColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              PrimaryButtonComponent(
                text: 'Sign in',
                actionPressed: () {},
              ),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              SecondaryButtonComponent(
                text: 'Create account',
                actionPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
