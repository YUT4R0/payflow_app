import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/fonts.dart';

import '../label_button/label_button.dart';

class LabelButtonsSet extends StatelessWidget {
  const LabelButtonsSet(
      {super.key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      this.enablePrimaryColor = false});
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            label: primaryLabel,
            onPressed: primaryOnPressed,
            style: enablePrimaryColor ? AppFonts.buttonPrimary : null,
          )),
          const VerticalDivider(),
          Expanded(
              child: LabelButton(
                  label: secondaryLabel, onPressed: secondaryOnPressed)),
        ],
      ),
    );
  }
}
