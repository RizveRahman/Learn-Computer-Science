import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: rFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_outlined)
              ),
            ),
            const SizedBox(height: rFormHeight - 20,),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            const SizedBox(height: rFormHeight - 20,),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(Icons.numbers)
              ),
            ),
            const SizedBox(height: rFormHeight - 20,),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint)
              ),
            ),
            const SizedBox(height: rFormHeight - 10,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: Text(tSignup.toUpperCase())),
            )

          ],
        ),
      ),
    );
  }
}