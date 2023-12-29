import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:s_task/core/app/network/repository/repository.dart';
import 'package:s_task/core/helpers/result.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(HomeInitial());

  final Repository _repository;

  Future<void> getPlans() async {
    emit(HomeLoading());

    final result = await _repository.getPlans();

    result.when(
      success: (data) => emit(HomeSuccess(data: data)),
      failure: (error, message) => emit(HomeFailure(message: message)),
    );
  }

 
}
