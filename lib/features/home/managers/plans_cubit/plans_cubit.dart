import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:s_task/core/app/network/repository/repository.dart';
import 'package:s_task/core/helpers/result.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';

part 'plans_state.dart';

class PlansCubit extends Cubit<PlansState> {
  PlansCubit(this._repository) : super(PlansInitial());

  final Repository _repository;

  Future<void> getPlans() async {
    emit(PlansLoading());

    final result = await _repository.getPlans();

    result.when(
      success: (data) => emit(PlansSuccess(data: data)),
      failure: (error, message) => emit(PlansFailure(message: message)),
    );
  }

  Future<void> deletePlan({required String id}) async {
    final currentState = state;

    if (currentState is PlansSuccess) {
      final plans = currentState.data;
      plans.removeWhere((element) => element.id.toString() == id);

      emit(PlansSuccess(data: plans));
    }
  }
}
