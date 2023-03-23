import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/features/authentication/screens/forget_password/forget_pass_option/forget_pass_model_buttom_sheet.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import '../../forget_password/forget_pass_option/forget_pass_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Container(
      padding: const EdgeInsets.symmetric(vertical: rFormHeight - 10),
      child: Column(children: [
        TextFormField(
          //controller: myController,
          decoration: InputDecoration(
              labelText: rEmail,
              prefixIcon: const Icon(Icons.account_circle_outlined),
              border: const OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple.shade300),
              ),
              labelStyle: const TextStyle(color: Colors.deepPurple)),
        ),
        Container(height: 10,),
        TextFormField(
          //controller: myController,
          decoration: InputDecoration(
              labelText: rPassword,
              prefixIcon: const Icon(Icons.fingerprint_outlined),
              border: const OutlineInputBorder(),
              suffixIcon: const IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple.shade300),

              ),
              labelStyle: const TextStyle(color: Colors.deepPurple)),

        ),

        const SizedBox(height: rFormHeight - 20,),

        Align(alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              ForgetPaawordScreen.buildShowModalBottomSheet(context);
            },
            child: const Text(rForgetPass),
          ),),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {},
              child: Text(rLogin.toUpperCase())),
        )

      ],
      ),
    ));
  }


}

