import 'package:flutter/material.dart';

import '../../data/models/plan_model/plan_data_model.dart';
import '../add_edit_plan_view.dart';

class EditPlanButton extends StatelessWidget {
  const EditPlanButton({
    super.key,
    required this.plan,
  });

  final PlanDataModel plan;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddEditPlanView(
              editPlan: plan,
            ),
          ),
        );
        
      },
      icon: const Icon(Icons.edit_note),
      color: Colors.lightGreen,
    );
  }
}
