import 'package:flutter/material.dart';
import 'package:payflow_app/shared/auth/auth_controller.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.getCurrentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      ),
    );
  }
}
