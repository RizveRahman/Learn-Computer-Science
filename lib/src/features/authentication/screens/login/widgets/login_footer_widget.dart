import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(googleLogo),
                width: 20,
              ),
              onPressed: () {},
              label: Text(rSignInGoogle)),
        ),
        SizedBox(
          height: rFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
              text: rDontHaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                    text: rSignUp,
                    style: TextStyle(color: Colors.blue))
              ])),
        ),
      ],
    );
  }
}