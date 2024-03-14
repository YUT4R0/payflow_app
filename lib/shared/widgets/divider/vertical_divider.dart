import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/colors.dart';

class VerticalDivider extends StatelessWidget {
  const VerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: double.maxFinite,
      color: AppColors.stroke,
    );
  }
}
