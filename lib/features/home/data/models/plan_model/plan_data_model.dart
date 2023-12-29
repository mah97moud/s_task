import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_desc_model/plan_desc_model.dart';

import 'telegram_group_model.dart';

part 'plan_data_model.freezed.dart';
part 'plan_data_model.g.dart';

@freezed
class PlanDataModel with _$PlanDataModel {
  factory PlanDataModel({
   @Default(0) int  id,
   @Default('') String  nameChannel,
   @Default('') String  name,
   @Default(0) num  discount,
   @Default(0) num  price,
    @Default('')  String  percentage1,
    dynamic percentage2,
    dynamic percentage3,
    @JsonKey(name: 'number_bot') dynamic numberBot,
    @JsonKey(name: 'plan_desc') List<PlanDescModel>? planDesc,
    @JsonKey(name: 'telegram_groups') List<TelegramGroupModel>? telegramGroups,
  }) = _PlanDataModel;

  factory PlanDataModel.fromJson(Map<String, dynamic> json) => _$PlanDataModelFromJson(json);
}
