import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/fonts.dart';

import '../label_button/label_button.dart';

class LabelButtonsSet extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  const LabelButtonsSet(
      {super.key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      this.enablePrimaryColor = false,
      this.enableSecondaryColor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          SizedBox(
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
                  label: secondaryLabel,
                  onPressed: secondaryOnPressed,
                  style: enableSecondaryColor ? AppFonts.buttonPrimary : null,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
