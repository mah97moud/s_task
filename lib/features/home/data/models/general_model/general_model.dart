import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_model.freezed.dart';
part 'general_model.g.dart';

@freezed
class GeneralModel with _$GeneralModel {
  factory GeneralModel({
   @Default('') String  message,
  }) = _GeneralModel;

  factory GeneralModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralModelFromJson(json);
}
