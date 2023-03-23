import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
      this.textAlign,
      required this.crossAxisAlignment,
      required this.image,
      required this.titile,
      required this.subTtitle})
      : super(key: key);

  final String image, titile, subTtitle;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.20,
        ),
        Text(
          titile,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          subTtitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
