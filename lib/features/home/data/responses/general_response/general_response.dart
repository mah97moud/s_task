import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'general_response.g.dart';

@JsonSerializable()
class GeneralResponse extends Equatable {
  final String? message;

  const GeneralResponse({this.message});

  factory GeneralResponse.fromJson(Map<String, dynamic> json) {
    return _$GeneralResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeneralResponseToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message];
}
