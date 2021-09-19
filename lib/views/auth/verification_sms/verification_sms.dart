import 'package:flutter/material.dart';

import '../../../components/primary_button/primary_button.dart';
import '../../../components/secondary_button/secondary_button.dart';
import '../../../constants.dart';
import 'components/input_code.dart';

class VerficationSmsModal extends StatelessWidget {
  const VerficationSmsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Verification',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(height: defaultSpacing),
        Text.rich(
          TextSpan(
              style: Theme.of(context).textTheme.bodyText1,
              text: 'We have sent a verification code to the number',
              children: const [
                TextSpan(
                  text: ' +55 00000000',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: primaryColor),
                ),
              ]),
        ),
        const SizedBox(height: defaultSpacing * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            InputCodeComponent(),
            InputCodeComponent(),
            InputCodeComponent(),
            InputCodeComponent(),
            InputCodeComponent(),
            InputCodeComponent()
          ],
        ),
        const SizedBox(height: defaultSpacing * 2),
        PrimaryButtonComponent(
          text: 'Verify',
          actionPressed: () {
            Navigator.of(context).pop('code value');
          },
        ),
        const SizedBox(
          height: defaultSpacing / 2,
        ),
        SecondaryButtonComponent(
          text: 'I didn\'t receive any code, send me again.',
          actionPressed: () {
            // ignore: todo
            // TODO - Request sms code
          },
        ),
      ],
    );
  }
}
