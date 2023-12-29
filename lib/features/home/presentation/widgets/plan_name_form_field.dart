import 'package:flutter/material.dart';

class PlanNameFormField extends StatelessWidget {
  const PlanNameFormField({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      onTapOutside: (e){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      decoration: const InputDecoration(
        hintText: 'Name of the plan',
        labelText: 'Name',
        
      ),
    );
  }
}