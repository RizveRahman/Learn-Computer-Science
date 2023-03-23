import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class DashboardBannerWidget extends StatelessWidget {
  const DashboardBannerWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cardBgColor),
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Flexible(child: Icon(Icons.bookmark)),
                    Flexible(
                        child: Image(
                            image: AssetImage(
                              pythonImg,
                            )))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  pythonBannerTitle,
                  style: textTheme.headline4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bannerSubTitle,
                  style: textTheme.bodyText2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: rDashboardPadding,
        ),
        Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cardBgColor),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Flexible(child: Icon(Icons.bookmark)),
                          Flexible(
                              child: Image(
                                  image: AssetImage(
                                    javaImg,
                                  )))
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        javaBannerTitle,
                        style: textTheme.headline4,
                        //overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        bannerSubTitle,
                        style: textTheme.bodyText2,
                        //overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(rDashboardButton),
                  ),
                )
              ],
            ))
      ],
    );
  }
}