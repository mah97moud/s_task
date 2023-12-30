part of 'plans_cubit.dart';

sealed class PlansState extends Equatable {
  const PlansState();

  @override
  List<Object> get props => [];
}

final class PlansInitial extends PlansState {}

final class PlansLoading extends PlansState {}

final class PlansSuccess extends PlansState {
  final List<PlanDataModel> data;

  const PlansSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

final class PlansFailure extends PlansState {
  final String message;

  const PlansFailure({required this.message});

  @override
  List<Object> get props => [message];
}
