import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/fonts.dart';

class InputText extends StatelessWidget {
  final String label;
  final IconData icon;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value) onChanged;

  const InputText({
    super.key,
    required this.label,
    required this.icon,
    this.initialValue,
    this.validator,
    this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.left,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            TextFormField(
              style: AppFonts.input,
              initialValue: initialValue,
              validator: validator,
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                labelText: label,
                labelStyle: AppFonts.input,
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Icon(
                        icon,
                        color: AppColors.primary,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 1,
                      color: AppColors.stroke,
                    )
                  ],
                ),
                border: InputBorder.none,
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.stroke,
            )
          ],
        ),
      ),
    );
  }
}
