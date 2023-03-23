import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:get/get.dart';
import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../../../../common_widgets/fade_in_animation/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
              animate: AnimatePosition(
                  topAfter: 0, topBefore: -30, leftAfter: 0, leftBefore: -30),
              durationInMs: 1600,
              child: Image(
                image: AssetImage(
                  splashTopIcon,
                ),
                height: 60,
              )),
          FadeInAnimation(
            animate: AnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: defaultSize,
              leftBefore: -80,
            ),
            durationInMs: 2000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appTagLine,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          ),
          FadeInAnimation(
              animate: AnimatePosition(
                bottomBefore: 0,
                bottomAfter: 100,
              ),
              durationInMs: 2400,
              child: const Image(
                image: AssetImage(splashImage),
                height: 350,
              )),
          FadeInAnimation(
              animate: AnimatePosition(
                  rightBefore: defaultSize,
                  rightAfter: defaultSize,
                  bottomBefore: 0,
                  bottomAfter: 60),
              durationInMs: 2400,
              child: Container(
                width: splashContainerSize,
                height: splashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: primaryColor,
                ),
              ))
        ],
      ),
    );
  }
}

//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   bool animated = false;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       animated = true;
//     });
//     Timer(Duration(seconds: 3), () {
//       Navigator.of(context)
//           .pushReplacement(MaterialPageRoute(builder: (_) => WelcomeScreen()));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[700],
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedPositioned(
//               top: 80,
//               left: animated ? defaultSize : -80,
//                 child: AnimatedOpacity(
//               child: Text(appTagLine, style: TextStyle(fontSize: 30),),
//               duration: Duration(microseconds: 1600), opacity: animated ? 1 : 0,
//             ), duration: Duration(microseconds: 1600)),
//             // logo here
//             Image.asset(
//               splashImage,
//               height: 120,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
