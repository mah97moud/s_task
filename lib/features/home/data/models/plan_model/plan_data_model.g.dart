// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanDataModelImpl _$$PlanDataModelImplFromJson(Map<String, dynamic> json) =>
    _$PlanDataModelImpl(
      id: json['id'] as int? ?? 0,
      nameChannel: json['nameChannel'] as String? ?? '',
      name: json['name'] as String? ?? '',
      discount: json['discount'] as num? ?? 0,
      price: json['price'] as num? ?? 0,
      percentage1: json['percentage1'] as String? ?? '',
      percentage2: json['percentage2'],
      percentage3: json['percentage3'],
      numberBot: json['number_bot'],
      planDesc: (json['plan_desc'] as List<dynamic>?)
          ?.map((e) => PlanDescModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      telegramGroups: (json['telegram_groups'] as List<dynamic>?)
          ?.map((e) => TelegramGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlanDataModelImplToJson(_$PlanDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameChannel': instance.nameChannel,
      'name': instance.name,
      'discount': instance.discount,
      'price': instance.price,
      'percentage1': instance.percentage1,
      'percentage2': instance.percentage2,
      'percentage3': instance.percentage3,
      'number_bot': instance.numberBot,
      'plan_desc': instance.planDesc,
      'telegram_groups': instance.telegramGroups,
    };
