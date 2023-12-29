import 'package:flutter/material.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';
import 'package:s_task/features/home/presentation/widgets/delete_plan_button.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.plan,
  });

  final PlanDataModel plan;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(plan.name),
                const Spacer(),
                DeletePlanButton(plan: plan)
              ],
            ),
            const SizedBox(height: 10.0),
            const Text('Description:'),
            ...plan.planDesc
                    ?.map(
                      (e) => Text(
                        '${e.desc != null ? '• ' : ''} ${e.desc ?? ''}',
                      ),
                    )
                    .toList() ??
                [],
          ],
        ),
      ),
    );
  }
}
