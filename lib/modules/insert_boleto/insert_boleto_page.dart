// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payflow_app/modules/insert_boleto/insert_boleto_controller.dart';
import 'package:payflow_app/shared/themes/colors.dart';
import 'package:payflow_app/shared/themes/fonts.dart';
import 'package:payflow_app/shared/widgets/input_text/input_text.dart';
import 'package:payflow_app/shared/widgets/label_buttons_set/label_buttons_set.dart';

class InsertBoletoPage extends StatefulWidget {
  final String? barcode;

  const InsertBoletoPage({super.key, this.barcode});

  @override
  State<InsertBoletoPage> createState() => _InsertBoletoPageState();
}

class _InsertBoletoPageState extends State<InsertBoletoPage> {
  final moneyInputTextController =
      MoneyMaskedTextController(leftSymbol: "R\$", decimalSeparator: ",");
  final dueDateInputTextController = MaskedTextController(mask: "00/00/0000");
  final barcodeInputTextController = TextEditingController();
  final controller = InsertBoletoController();

  @override
  void initState() {
    if (widget.barcode != null) {
      barcodeInputTextController.text = widget.barcode!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: const BackButton(
          color: AppColors.input,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
                child: Text(
                  "Preencha os dados do boleto",
                  style: AppFonts.titleBoldHeading,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 24),
              Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      InputText(
                        label: "Nome do boleto",
                        validator: controller.validateName,
                        icon: Icons.description_outlined,
                        onChanged: (value) {
                          controller.onChange(name: value);
                        },
                      ),
                      InputText(
                        label: "Vencimento",
                        validator: controller.validateDuedate,
                        controller: dueDateInputTextController,
                        icon: FontAwesomeIcons.timesCircle,
                        onChanged: (value) {
                          controller.onChange(dueDate: value);
                        },
                      ),
                      InputText(
                        label: "Valor",
                        validator: (_) => controller.validateValue(
                            moneyInputTextController.numberValue),
                        controller: moneyInputTextController,
                        icon: FontAwesomeIcons.wallet,
                        onChanged: (value) {
                          controller.onChange(
                              value: moneyInputTextController.numberValue);
                        },
                      ),
                      InputText(
                        label: "Código",
                        validator: controller.validateCode,
                        controller: barcodeInputTextController,
                        icon: FontAwesomeIcons.barcode,
                        onChanged: (value) {
                          controller.onChange(barcode: value);
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LabelButtonsSet(
        primaryLabel: "Cancelar",
        primaryOnPressed: () {
          Navigator.pop(context);
        },
        secondaryLabel: "Cadastrar",
        secondaryOnPressed: () async {
          await controller.registerBoleto();
          Navigator.pop(context);
        },
        enableSecondaryColor: true,
      ),
    );
  }
}
