import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/features/home/presentation/widgets/plans_list.dart';

import '../../managers/plans_cubit/plans_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: BlocBuilder<PlansCubit, PlansState>(
        builder: (context, state) {
          return switch (state) {
            PlansInitial() => const SizedBox.shrink(),
            PlansLoading() => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            PlansSuccess(data: final plans) => PlansList(plans: plans),
            PlansFailure() => Center(
                child: Text(state.message),
              ),
          };
        },
      ),
    );
  }
}
