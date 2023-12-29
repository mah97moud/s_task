import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/features/home/managers/home_cubit/home_cubit.dart';
import 'package:s_task/features/home/presentation/widgets/plans_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return switch (state) {
            HomeInitial() => const SizedBox.shrink(),
            HomeLoading() => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            HomeSuccess(data: final plans) => PlansList(plans: plans),
            HomeFailure() => Center(
                child: Text(state.message),
              ),
          };
        },
      ),
    );
  }
}
