import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(defaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.4,),
          Column(
            children: [
              const SizedBox(height: 20,),
              Text(
                model.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100,)
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}