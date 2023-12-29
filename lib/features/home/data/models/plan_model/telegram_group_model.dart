import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_group_model.freezed.dart';
part 'telegram_group_model.g.dart';

@freezed
class TelegramGroupModel with _$TelegramGroupModel {
  factory TelegramGroupModel({
    int? id,
    String? title,
    String? merchant,
    String? token,
  }) = _TelegramGroup;

  factory TelegramGroupModel.fromJson(Map<String, dynamic> json) =>
      _$TelegramGroupModelFromJson(json);
}
