import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:s_task/core/helpers/result.dart';

import '../../../../core/app/network/repository/repository.dart';

part 'add_plan_state.dart';

class AddPlanCubit extends Cubit<AddPlanState> {
  AddPlanCubit(this._repository) : super(AddPlanInitial());

  final Repository _repository;

  Future<void> addPlan({required Map<String, dynamic> body}) async {
    emit(AddPlanLoading());

    final result = await _repository.addPlan(
      body: body,
    );

    result.when(
      success: (success) => emit(AddPlanSuccess(message: success.message)),
      failure: (failure, message) => emit(AddPlanFailure(message: message)),
    );
  }
}
