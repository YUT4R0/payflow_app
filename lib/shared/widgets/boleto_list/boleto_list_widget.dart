import 'package:flutter/material.dart';
import 'package:payflow_app/shared/models/boleto_model.dart';
import 'package:payflow_app/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow_app/shared/widgets/boleto_tile/boleto_tile.dart';

class BoletoListWidget extends StatefulWidget {
  final BoletoListController controller;

  const BoletoListWidget({super.key, required this.controller});

  @override
  State<BoletoListWidget> createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BoletoModel>>(
        valueListenable: widget.controller.boletosNotifier,
        builder: (_, boletos, __) => Column(
              children:
                  boletos.map((boleto) => BoletoTile(data: boleto)).toList(),
            ));
  }
}
