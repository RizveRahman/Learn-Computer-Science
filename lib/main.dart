import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/features/authentication/screens/welcome/welcome.dart';
import 'package:flutter_course_app/src/features/core/screen/dashboard/dashboard_screen.dart';
import 'package:flutter_course_app/src/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'src/features/authentication/screens/splash_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      themeMode: ThemeMode.system,
      home: DashBoard(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const WelcomeScreen() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
