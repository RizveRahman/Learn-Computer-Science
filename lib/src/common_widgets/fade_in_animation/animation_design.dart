import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'splash_screen_controller.dart';

class FadeInAnimation extends StatelessWidget {
   FadeInAnimation({
    super.key,
    //required this.controller,
     required this.animate,
     required this.child,
    required this.durationInMs,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final AnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedPositioned(
          duration: Duration(milliseconds: durationInMs),
          top: controller.animate.value ? animate!.topAfter :  animate!.topBefore,
          left: controller.animate.value ? animate!.leftAfter :  animate!.leftBefore,
          bottom: controller.animate.value ? animate!.bottomAfter :  animate!.bottomBefore,
          right: controller.animate.value ? animate!.rightAfter :  animate!.rightBefore,
          child: AnimatedOpacity(
              duration: Duration(milliseconds: durationInMs),
              opacity: controller.animate.value ? 1 : 0,
              child: child,
          )),
              // child: Image(
              //   image: AssetImage(splashTopIcon),
              //   height: 100,
              // ))),
    );
  }
}