import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';

class DashboardTopCourseWidget extends StatelessWidget {
  const DashboardTopCourseWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Flutter Crash Course",
                            style: textTheme.headline4,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Flexible(
                            child: Image(
                              image: AssetImage(flutterImg),
                              height: 100,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.play_circle),
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()),
                        ),
                        SizedBox(
                          width: rDashboardPadding,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 Sections",
                              style: textTheme.headline4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Programming Languages",
                              style: textTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Flutter Crash Course",
                            style: textTheme.headline4,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Flexible(
                            child: Image(
                              image: AssetImage(flutterImg),
                              height: 100,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.play_circle),
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()),
                        ),
                        SizedBox(
                          width: rDashboardPadding,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 Sections",
                              style: textTheme.headline4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Programming Languages",
                              style: textTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Flutter Crash Course",
                            style: textTheme.headline4,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Flexible(
                            child: Image(
                              image: AssetImage(flutterImg),
                              height: 100,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.play_circle),
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()),
                        ),
                        SizedBox(
                          width: rDashboardPadding,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 Sections",
                              style: textTheme.headline4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Programming Languages",
                              style: textTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}