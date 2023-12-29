import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/core/app/di.dart';
import 'package:s_task/features/home/managers/home_cubit/home_cubit.dart';
import 'package:s_task/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        di(),
      )..getPlans(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
