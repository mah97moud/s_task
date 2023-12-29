part of 'add_plan_cubit.dart';

sealed class AddPlanState extends Equatable {
  const AddPlanState();

  @override
  List<Object> get props => [];
}

final class AddPlanInitial extends AddPlanState {}

final class AddPlanLoading extends AddPlanState {}

final class AddPlanSuccess extends AddPlanState {
  final String message;

  const AddPlanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

final class AddPlanFailure extends AddPlanState {
  final String message;

  const AddPlanFailure({required this.message});

  @override
  List<Object> get props => [message];
}
