import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/features/home/managers/home_cubit/home_cubit.dart';
import 'package:s_task/features/home/presentation/add_plan_view.dart';

class AddPlanFloatingAction extends StatelessWidget {
  const AddPlanFloatingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          onPressed: () async {
            final readHomeCubit = context.read<HomeCubit>();
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddPlanView(),
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
