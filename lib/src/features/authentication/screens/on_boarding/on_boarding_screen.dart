import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/constants/image_strings.dart';
import 'package:flutter_course_app/src/constants/sizes.dart';
import 'package:flutter_course_app/src/constants/text_string.dart';
import 'package:flutter_course_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_course_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colors.dart';
import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final obController = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: obController.onPageChange,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () => obController.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black87),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    onPrimary: Colors.white),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color(0xff227272), shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(
              top: 35,
              right: 15,
              child: TextButton(
            onPressed: () => obController.skip(),
            child: Text("Skip", style: TextStyle(color: Colors.grey),),
          )),
          Obx(() => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
              activeIndex: obController.currentPage.value,
              count: 3,
                  effect: WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
            )),
          )
        ],
      ),
    );
  }


}
