import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow_app/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow_app/modules/home/home_page.dart';
import 'package:payflow_app/modules/insert_boleto/insert_boleto_page.dart';
import 'package:payflow_app/modules/login/login_page.dart';
import 'package:payflow_app/modules/splash/splash_page.dart';
import 'package:payflow_app/shared/themes/colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key}) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
          primaryColor: AppColors.background, primarySwatch: Colors.orange),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
        "/barcode_scanner": (context) => const BarcodeScannerPage(),
        "/insert_boleto": (context) => const InsertBoletoPage(),
      },
    );
  }
}
