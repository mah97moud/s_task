import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/core/extensions/context_ex.dart';
import 'package:s_task/features/home/managers/delete_plan_cubit/delete_plan_cubit.dart';
import 'package:s_task/features/home/managers/plans_cubit/plans_cubit.dart';

import '../../data/models/plan_model/plan_data_model.dart';

class DeletePlanButton extends StatelessWidget {
  const DeletePlanButton({
    super.key,
    required this.plan,
  });

  final PlanDataModel plan;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeletePlanCubit, DeletePlanState>(
      listener: (context, state) async {
        final readPlansCubit = context.read<PlansCubit>();

        if (state is DeletePlanSuccess) {
          context.showSnackBar(state.message);
          await readPlansCubit.getPlans();
        } else if (state is DeletePlanFailure) {
          context.showSnackBar(state.message);
        } else {
          context.showLoadingSnackBar('Delete...');
        }
      },
      builder: (context, state) {
        return IconButton(
          onPressed: () async {
            final readDeleteCubit = context.read<DeletePlanCubit>();
            final delete = await showAdaptiveDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Delete'),
                  content: const Text('Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: const Text('No'),
                    )
                  ],
                );
              },
            );
            if (delete == true) {
              var id = plan.id.toString();
              await readDeleteCubit.deletePlan(id: id);
            }
          },
          icon: const Icon(Icons.delete),
          color: Colors.red,
        );
      },
    );
  }
}
