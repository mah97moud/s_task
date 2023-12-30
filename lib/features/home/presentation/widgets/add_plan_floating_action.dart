import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/features/home/presentation/add_edit_plan_view.dart';

import '../../managers/plans_cubit/plans_cubit.dart';

class AddPlanFloatingAction extends StatelessWidget {
  const AddPlanFloatingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlansCubit, PlansState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          onPressed: () async {
            final readHomeCubit = context.read<PlansCubit>();
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddEditPlanView(),
              ),
            );
    
            if (result == true) {
              readHomeCubit.getPlans();
            }
          },
          label: const Text('Add Plan'),
          icon: const Icon(Icons.add),
        );
      },
    );
  }
}
