import 'package:freezed_annotation/freezed_annotation.dart';

import 'plan_data_model.dart';

part 'plan_model.freezed.dart';
part 'plan_model.g.dart';

@freezed
class PlanModel with _$PlanModel {
  factory PlanModel({
    List<PlanDataModel>? data,
  }) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) =>
      _$PlanModelFromJson(json);
}
