import 'package:flutter/material.dart';

class PlanPercentageFormField extends StatelessWidget {
  const PlanPercentageFormField({
    super.key,
    required TextEditingController percentageController,
  }) : _percentageController = percentageController;

  final TextEditingController _percentageController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _percentageController,
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
        labelText: 'Percentage',
      ),
    );
  }
}
