import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_course_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_course_app/src/common_widgets/fade_in_animation/splash_screen_controller.dart';
import 'package:flutter_course_app/src/constants/colors.dart';
import 'package:flutter_course_app/src/constants/image_strings.dart';
import 'package:flutter_course_app/src/constants/sizes.dart';
import 'package:flutter_course_app/src/constants/text_string.dart';
import 'package:flutter_course_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_course_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var heights = MediaQuery.of(context).size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDark = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? secondaryColor : primaryColor,
      body: Stack(
        children: [
          FadeInAnimation(
            animate: AnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            durationInMs: 1200,
            child: Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: const AssetImage(welcomeScreenImages),
                      height: heights * 0.6),
                  Column(
                    children: [
                      Text(
                        welcomeTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        welcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () => Get.to(() => const LoginScreen()) ,
                              child: Text(loginText.toUpperCase()))),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () => Get.to(() => const SignUpScreen()) ,
                              child: Text(signUpText.toUpperCase()))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
