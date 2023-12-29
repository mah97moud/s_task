part of 'delete_plan_cubit.dart';

sealed class DeletePlanState extends Equatable {
  const DeletePlanState();

  @override
  List<Object> get props => [];
}

final class DeletePlanInitial extends DeletePlanState {}

final class DeletePlanLoading extends DeletePlanState {}

final class DeletePlanSuccess extends DeletePlanState {
  final String message;
  final String id;

  const DeletePlanSuccess({required this.id, required this.message});

  @override
  List<Object> get props => [message, id];
}

final class DeletePlanFailure extends DeletePlanState {
  final String message;

  const DeletePlanFailure({required this.message});

  @override
  List<Object> get props => [message];
}
