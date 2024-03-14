import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/fonts.dart';
import 'package:payflow_app/shared/widgets/label_buttons_set/label_buttons_set.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget(
      {super.key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      required this.title,
      required this.subtitle});
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                            text: title,
                            children: [
                              TextSpan(
                                  text: "\n$subtitle",
                                  style: AppFonts.buttonHeading)
                            ],
                            style: AppFonts.buttonBoldHeading),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    LabelButtonsSet(
                        enablePrimaryColor: true,
                        primaryLabel: primaryLabel,
                        primaryOnPressed: primaryOnPressed,
                        secondaryLabel: secondaryLabel,
                        secondaryOnPressed: secondaryOnPressed)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
