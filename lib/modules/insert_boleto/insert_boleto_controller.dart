import 'package:flutter/material.dart';
import 'package:payflow_app/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InsertBoletoController {
  final formKey = GlobalKey<FormState>();
  BoletoModel model = BoletoModel();

  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;
  String? validateDuedate(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazia" : null;
  String? validateValue(double value) =>
      value == 0 ? "Insira um valor maior que R\$0,00" : null;
  String? validateCode(String? value) =>
      value?.isEmpty ?? true ? "O código do boleto não pode ser vazio" : null;

  void onChange(
      {String? name, String? dueDate, double? value, String? barcode}) {
    model = model.copyWith(
        name: name, value: value, dueDate: dueDate, barcode: barcode);
  }

  Future<void> saveBoleto() async {
    final instance = await SharedPreferences.getInstance();
    final boletos = instance.getStringList("boletos") ?? <String>[];
    boletos.add(model.toJson());
    await instance.setStringList("boletos", boletos);
    return;
  }

  Future<void> registerBoleto() async {
    final form = formKey.currentState;
    if (form!.validate()) {
      return await saveBoleto();
    }
  }
}
