part of 'add_edit_plan_cubit.dart';

sealed class AddEditPlanState extends Equatable {
  const AddEditPlanState();

  @override
  List<Object> get props => [];
}

final class AddEditPlanInitial extends AddEditPlanState {}

final class AddEditPlanAddState extends AddEditPlanState {}

final class AddEditPlanEditState extends AddEditPlanState {
  final PlanDataModel plan;

  const AddEditPlanEditState({required this.plan});

  @override
  List<Object> get props => [plan];
}

final class AddEditPlanLoading extends AddEditPlanState {}

final class AddEditPlanSuccess extends AddEditPlanState {
  final String message;

  const AddEditPlanSuccess({required this.message});

  @override
  List<Object> get props => [message];
}

final class AddEditPlanFailure extends AddEditPlanState {
  final String message;

  const AddEditPlanFailure({required this.message});

  @override
  List<Object> get props => [message];
}
