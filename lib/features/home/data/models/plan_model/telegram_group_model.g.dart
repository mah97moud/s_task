// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramGroupImpl _$$TelegramGroupImplFromJson(Map<String, dynamic> json) =>
    _$TelegramGroupImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      merchant: json['merchant'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$TelegramGroupImplToJson(_$TelegramGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'merchant': instance.merchant,
      'token': instance.token,
    };
