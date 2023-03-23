import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants/text_string.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "$tOtpMessage support@gmail.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                print("OTP is => $code");
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: const Text(tNext))),
          ],
        ),
      ),
    );
  }
}
