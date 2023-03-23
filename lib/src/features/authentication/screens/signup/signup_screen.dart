import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_course_app/src/constants/image_strings.dart';
import 'package:flutter_course_app/src/constants/sizes.dart';
import 'package:flutter_course_app/src/features/authentication/screens/signup/widget/signup_form_widget.dart';
import '../../../../constants/text_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                    image: tSignupImages,
                    titile: tSignUpTitle,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    subTtitle: tSignUpSubTitle,),
                SignUpFormWidget(),
                Column(
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
                          label: Text(rSignInGoogle.toUpperCase())),
                    ),
                    SizedBox(
                      height: rFormHeight - 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(TextSpan(
                          text: rAlreadyHaveAccount,
                          style: Theme.of(context).textTheme.bodyText1,
                          children: const [
                            TextSpan(
                                text: rLogin,
                                style: TextStyle(color: Colors.blue))
                          ])),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


