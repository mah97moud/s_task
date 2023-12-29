import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:s_task/core/helpers/result.dart';

import '../../../../core/app/network/repository/repository.dart';

part 'delete_plan_state.dart';

class DeletePlanCubit extends Cubit<DeletePlanState> {
  DeletePlanCubit(this._repository) : super(DeletePlanInitial());

  final Repository _repository;

  Future<void> deletePlan({required String id}) async {
    emit(DeletePlanLoading());

    final result = await _repository.deletePlan(
      id: id,
    );

    result.when(
      success: (success) =>
          emit(DeletePlanSuccess(id: id, message: success.message)),
      failure: (failure, message) => emit(DeletePlanFailure(message: message)),
    );
  }
}
