import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:s_task/core/helpers/result.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';

import '../../../../core/app/network/repository/repository.dart';

part 'add_edit_plan_state.dart';

class AddEditPlanCubit extends Cubit<AddEditPlanState> {
  AddEditPlanCubit(this._repository) : super(AddEditPlanInitial());

  final Repository _repository;

  void addState() {
    emit(AddEditPlanAddState());
  }

  Future<void> editState(PlanDataModel plan) async {
    await Future.delayed(const Duration(milliseconds: 10));
    emit(AddEditPlanEditState(plan: plan));
  }

  init(PlanDataModel? editPlan) {
    if (editPlan != null) {
      editState(editPlan);
    } else {
      addState();
    }
  }

  Future<void> addPlan({required Map<String, dynamic> body}) async {
    emit(AddEditPlanLoading());

    final result = await _repository.addPlan(
      body: body,
    );

    result.when(
      success: (success) => emit(AddEditPlanSuccess(message: success.message)),
      failure: (failure, message) => emit(AddEditPlanFailure(message: message)),
    );
  }

  Future<void> editPlan({
    required String id,
    required Map<String, dynamic> body,
  }) async {
    emit(AddEditPlanLoading());

    final result = await _repository.updatePlan(
      id: id,
      body: body,
    );

    result.when(
      success: (success) => emit(AddEditPlanSuccess(message: success.message)),
      failure: (failure, message) => emit(AddEditPlanFailure(message: message)),
    );
  }
}
