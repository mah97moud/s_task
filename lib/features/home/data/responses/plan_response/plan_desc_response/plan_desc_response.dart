import 'package:equatable/equatable.dart';

class PlanDescResponse extends Equatable {
  final String? desc;

  const PlanDescResponse({this.desc});

  factory PlanDescResponse.fromJson(Map<String, dynamic> json) {
    return PlanDescResponse(
      desc: json['desc'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'desc': desc,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [desc];
}
