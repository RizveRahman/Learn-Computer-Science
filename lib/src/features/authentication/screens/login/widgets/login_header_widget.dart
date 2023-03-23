import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_string.dart';

class Login_header_widget extends StatelessWidget {
  const Login_header_widget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(welcomeScreenImages),
          height: size.height * 0.25,
        ),
        Text(
          rLogInTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          rLogInSubTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}