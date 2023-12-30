import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/core/app/di.dart';
import 'package:s_task/features/home/presentation/widgets/add_plan_floating_action.dart';
import 'package:s_task/features/home/presentation/widgets/home_view_body.dart';

import '../managers/delete_plan_cubit/delete_plan_cubit.dart';
import '../managers/plans_cubit/plans_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PlansCubit(
            di(),
          )..getPlans(),
        ),
        BlocProvider(
          create: (context) => DeletePlanCubit(
            di(),
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const HomeViewBody(),
        floatingActionButton: const AddPlanFloatingAction(),
      ),
    );
  }
}
