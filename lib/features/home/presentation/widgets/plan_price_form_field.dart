import 'package:flutter/material.dart';

class PlanPriceFormField extends StatelessWidget {
  const PlanPriceFormField({
    super.key,
    required TextEditingController priceController,
  }) : _priceController = priceController;

  final TextEditingController _priceController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _priceController,
      onTapOutside: (e) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
       validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } 
        return null;
      },
      decoration: const InputDecoration(
        hintText: '0',
        labelText: 'Price',
      ),
    );
  }
}
