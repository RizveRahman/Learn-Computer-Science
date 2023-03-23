

import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/features/authentication/screens/forget_password/forget_pass_mail/forget_pass_mail.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import 'forget_pass_btn_widget.dart';

class ForgetPaawordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      context: context, builder: (context) => Container(
      padding:  EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.headline2,),
          Text(tForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2,),
          const SizedBox(height: 30,),

          ForgetPasswordBtWidget(
            btnIcon: Icons.mail_outline_rounded,
            title: tEmail,
            subTitle: tResetViaEMail,
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const ForgetPassMailScreen());},
          ),
          const SizedBox(height: 20,),
          ForgetPasswordBtWidget(
            btnIcon: Icons.mobile_friendly_rounded,
            title: tPhoneNo,
            subTitle: tResetViaPhone,
            onTap: () {
              Navigator.pop(context);
              //Get.to(() => const Fo());},
            },
          ),
        ],
      ),
    ),);
  }
}