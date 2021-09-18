import 'package:flutter/material.dart';

import '../../../components/primary_button/primary_button.dart';
import '../../../components/secondary_button/secondary_button.dart';
import '../../../components/text_field/text_field.dart';
import '../../../constants.dart';
import '../components/image_logo.dart';
import '../update_password/update_password.dart';

class RequestPasswordView extends StatelessWidget {
  const RequestPasswordView({Key? key}) : super(key: key);
  static const routeName = '/requestPassword';

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
                  'Forgot password',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: defaultSpacing / 2),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your phone number and we sending a code.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const Spacer(),
              const TextFieldComponent(hintText: 'Phone number'),
              const Spacer(
                flex: 2,
              ),
              PrimaryButtonComponent(
                text: 'Request password',
                actionPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(UpdatePasswordView.routeName);
                },
              ),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              SecondaryButtonComponent(
                text: 'Sign in',
                actionPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
