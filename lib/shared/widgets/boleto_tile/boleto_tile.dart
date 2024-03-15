import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow_app/shared/models/boleto_model.dart';
import 'package:payflow_app/shared/themes/fonts.dart';

class BoletoTile extends StatelessWidget {
  final BoletoModel data;

  const BoletoTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          data.name!,
          style: AppFonts.titleListTile,
        ),
        subtitle: Text(
          "Vence em ${data.dueDate}",
          style: AppFonts.captionBody,
        ),
        trailing: Text.rich(TextSpan(
            text: "R\$",
            style: AppFonts.trailingRegular,
            children: [
              TextSpan(
                  text: data.value!.toStringAsFixed(2),
                  style: AppFonts.trailingBold)
            ])),
      ),
    );
  }
}
