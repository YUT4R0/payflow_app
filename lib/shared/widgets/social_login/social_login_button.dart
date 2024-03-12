import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/fonts.dart';
import 'package:payflow_app/shared/themes/images.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: const Border.fromBorderSide(
                BorderSide(color: AppColors.stroke))),
        height: 50,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    const SizedBox(width: 28),
                    Container(
                      height: 50,
                      width: 1,
                      color: AppColors.stroke,
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google",
                    style: AppFonts.buttonGray,
                  ),
                  const SizedBox(width: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
