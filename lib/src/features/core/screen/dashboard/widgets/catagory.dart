import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../models/dashboard/catagory_model.dart';

class DashboardCatagoryWidget extends StatelessWidget {
  const DashboardCatagoryWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onTap: list[index].onPress,
            child: SizedBox(
              width: 170,
              height: 50,
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: darkColor),
                    child: Center(
                        child: Text(
                          list[index].title,
                          style: textTheme.headline6
                              ?.apply(color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        list[index].subHeading,
                        style: textTheme.bodyText2,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          // children: [
          //
          //   SizedBox(
          //     width: 170,
          //     height: 50,
          //     child: Row(
          //       children: [
          //         Container(
          //           width: 45,
          //           height: 45,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: darkColor),
          //           child: Center(
          //               child: Text(
          //                 "JS",
          //                 style: textTheme.headline6
          //                     ?.apply(color: Colors.white),
          //               )),
          //         ),
          //         const SizedBox(
          //           width: 5,
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               "Java Scrip",
          //               style: textTheme.headline6,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //             Text(
          //               "10 lessons",
          //               style: textTheme.bodyText2,
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          //   SizedBox(
          //     width: 170,
          //     height: 50,
          //     child: Row(
          //       children: [
          //         Container(
          //           width: 45,
          //           height: 45,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: darkColor),
          //           child: Center(
          //               child: Text(
          //                 "JS",
          //                 style: textTheme.headline6
          //                     ?.apply(color: Colors.white),
          //               )),
          //         ),
          //         const SizedBox(
          //           width: 5,
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               "Java Scrip",
          //               style: textTheme.headline6,
          //               overflow: TextOverflow.ellipsis,
          //             ),
          //             Text(
          //               "10 lessons",
          //               style: textTheme.bodyText2,
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ]
      ),
    );
  }
}