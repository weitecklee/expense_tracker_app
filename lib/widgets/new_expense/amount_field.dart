import 'package:flutter/material.dart';

class AmountField extends StatelessWidget {
  const AmountField(this.amountController, {super.key});

  final TextEditingController amountController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: amountController,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        label: Text('Amount'),
        prefixText: '\$ ',
      ),
    );
  }
}
