import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_desc_model.freezed.dart';
part 'plan_desc_model.g.dart';

@freezed
class PlanDescModel with _$PlanDescModel {
  factory PlanDescModel({
    String? desc,
  }) = _PlanDescModel;

  factory PlanDescModel.fromJson(Map<String, dynamic> json) =>
      _$PlanDescModelFromJson(json);
}
