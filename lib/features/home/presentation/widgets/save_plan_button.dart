import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';
import 'package:s_task/features/home/managers/add_plan_cubit/add_edit_plan_cubit.dart';

class SavePlanButton extends StatelessWidget {
  const SavePlanButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController disController,
    required TextEditingController priceController,
    required TextEditingController percentageController,
    required this.editPlan,
  })  : _formKey = formKey,
        _nameController = nameController,
        _disController = disController,
        _priceController = priceController,
        _percentageController = percentageController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _disController;
  final TextEditingController _priceController;
  final TextEditingController _percentageController;
  final PlanDataModel? editPlan;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          final cubit = context.read<AddEditPlanCubit>();
          final name = _nameController.text;
          final dis = int.tryParse(_disController.text);
          final price = int.tryParse(_priceController.text);
          final percentage = _percentageController.text;

          final body = {
            "nameChannel": name,
            "name": name.toLowerCase(),
            "discount": dis ?? 0,
            "price": price ?? 0,
            "percentage1": percentage,
          };
          if (editPlan != null) {
            cubit.editPlan(id: editPlan?.id.toString() ?? '0', body: body);
          } else {
            cubit.addPlan(
              body: body,
            );
          }
        }
      },
      child:
          editPlan == null ? const Text('Add Plan') : const Text('Update Plan'),
    );
  }
}
