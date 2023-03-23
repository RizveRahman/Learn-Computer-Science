import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_course_app/src/constants/sizes.dart';
import 'package:flutter_course_app/src/constants/text_string.dart';
import 'package:flutter_course_app/src/features/authentication/screens/login/widgets/login_form.dart';
import '../../../../constants/image_strings.dart';
import 'widgets/login_footer_widget.dart';
import 'widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormHeaderWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  image: welcomeScreenImages,
                  titile: rLogInTitle,
                  subTtitle: rLogInSubTitle,
                ),
                LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
