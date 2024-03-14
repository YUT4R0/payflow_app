import 'package:flutter/material.dart';
import 'package:payflow_app/modules/home/home_page.dart';
import 'package:payflow_app/modules/login/login_page.dart';
import 'package:payflow_app/modules/splash/splash_page.dart';
import 'package:payflow_app/shared/themes/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.background,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
