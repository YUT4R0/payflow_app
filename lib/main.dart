import 'package:flutter/material.dart';
import 'package:payflow_app/modules/home/home_page.dart';
import 'package:payflow_app/shared/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.background,
      ),
      home: const HomePage(),
    );
  }
}
