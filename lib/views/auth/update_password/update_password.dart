import 'package:flutter/material.dart';

import '../../../components/primary_button/primary_button.dart';
import '../../../components/text_field/text_field.dart';
import '../../../constants.dart';
import '../components/image_logo.dart';

class UpdatePasswordView extends StatelessWidget {
  const UpdatePasswordView({Key? key}) : super(key: key);
  static const routeName = '/udpatePassword';

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
                  'Update password',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: defaultSpacing / 2),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your new password.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const Spacer(),
              const TextFieldComponent(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              const TextFieldComponent(
                hintText: 'Confirm password',
                isPassword: true,
              ),
              const Spacer(flex: 2),
              PrimaryButtonComponent(
                text: 'Update password',
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
