import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/fonts.dart';

class LabelButton extends StatelessWidget {
  const LabelButton(
      {super.key, required this.label, required this.onPressed, this.style});
  final String label;
  final VoidCallback onPressed;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Text(label, style: style ?? AppFonts.buttonHeading),
      ),
    );
  }
}
