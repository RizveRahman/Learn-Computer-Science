import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_course_app/src/constants/image_strings.dart';
import 'package:flutter_course_app/src/constants/sizes.dart';
import 'package:flutter_course_app/src/constants/text_string.dart';
import 'package:flutter_course_app/src/features/authentication/screens/forget_password/forget_pass_otp/otp_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPassMailScreen extends StatelessWidget {
  const ForgetPassMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                SizedBox(
                  height: defaultSize * 4,
                ),
                FormHeaderWidget(
                  image: tForgetPasswordImage,
                  titile: tForgetPassword,
                  subTtitle: tForgetPasswordSubTitle,
                  // heightBetween: 30,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: rFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(tEmail),
                          hintText: tEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () {
                          Get.to(() => const OTPScreen());
                        }, child: Text(tNext)))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
