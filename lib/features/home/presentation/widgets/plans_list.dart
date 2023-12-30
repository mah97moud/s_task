import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';
import 'package:s_task/features/home/presentation/widgets/plan_card.dart';

import '../../managers/plans_cubit/plans_cubit.dart';

class PlansList extends StatelessWidget {
  const PlansList({
    super.key,
    required this.plans,
  });

  final List<PlanDataModel> plans;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => context.read<PlansCubit>().getPlans(),
      child: ListView.builder(
        itemCount: plans.length,
        itemBuilder: (BuildContext context, int index) {
          var plan = plans[index];
          return PlanCard(plan: plan);
        },
      ),
    );
  }
}
