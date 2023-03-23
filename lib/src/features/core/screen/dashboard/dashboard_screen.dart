import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/constants/colors.dart';
import 'package:flutter_course_app/src/constants/image_strings.dart';
import 'package:flutter_course_app/src/constants/sizes.dart';
import 'package:flutter_course_app/src/constants/text_string.dart';
import 'package:flutter_course_app/src/features/core/screen/dashboard/widgets/appbar.dart';
import 'package:flutter_course_app/src/features/core/screen/dashboard/widgets/banner.dart';
import 'package:flutter_course_app/src/features/core/screen/dashboard/widgets/catagory.dart';
import 'package:flutter_course_app/src/features/core/screen/dashboard/widgets/searchbar.dart';
import 'package:flutter_course_app/src/features/core/screen/dashboard/widgets/top_courses.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(rDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rDashboardTitle,
                style: textTheme.bodyText2,
              ),
              Text(
                rDashboardHeading,
                style: textTheme.headline2,
              ),

              const SizedBox(height: rDashboardPadding,),
              DashboardSearchBarWidget(textTheme: textTheme),

              const SizedBox(height: rDashboardPadding,),
              DashboardCatagoryWidget(textTheme: textTheme),

              const SizedBox(
                height: 25,
              ),
              DashboardBannerWidget(textTheme: textTheme),

              const SizedBox(height: rDashboardPadding,),
              Text(rDashboardTopCourses, style: textTheme.headline4?.apply(fontSizeFactor: 1.2),),
              DashboardTopCourseWidget(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}










