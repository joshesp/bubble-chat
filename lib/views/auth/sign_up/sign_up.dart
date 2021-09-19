import 'package:flutter/material.dart';

import '../../../components/primary_button/primary_button.dart';
import '../../../components/secondary_button/secondary_button.dart';
import '../../../components/text_field/text_field.dart';
import '../../../constants.dart';
import '../../../helpers/modal_helper.dart';
import '../../../tabs/tabs.dart';
import '../components/image_logo.dart';
import '../verification_sms/verification_sms.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);
  static const routeName = '/signUp';

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
                  'Sign up',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const Spacer(),
              const TextFieldComponent(hintText: 'Phone number'),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              const TextFieldComponent(hintText: 'User name'),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              const TextFieldComponent(hintText: 'Full name'),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
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
              const Spacer(),
              PrimaryButtonComponent(
                text: 'Sign up',
                actionPressed: () {
                  modalBottomSheet(
                    context,
                    const VerficationSmsModal(),
                  ).then((value) {
                    print('Testing Value: $value');
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        TabsView.routeName, (route) => false);
                  });
                },
              ),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
              SecondaryButtonComponent(
                text: 'I have an account',
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
