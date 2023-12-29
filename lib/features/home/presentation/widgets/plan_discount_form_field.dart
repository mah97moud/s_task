import 'package:flutter/material.dart';

class PlanDiscountFormField extends StatelessWidget {
  const PlanDiscountFormField({
    super.key,
    required TextEditingController disController,
  }) : _disController = disController;

  final TextEditingController _disController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _disController,
      onTapOutside: (e){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      decoration: const InputDecoration(
        hintText: '0',
        labelText: 'Discount',
        
      ),
    );
  }
}