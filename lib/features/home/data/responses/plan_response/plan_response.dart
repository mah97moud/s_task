import 'package:equatable/equatable.dart';

import 'plan_data.dart';

class PlanResponse extends Equatable {
  final List<PlanData>? data;

  const PlanResponse({this.data});

  factory PlanResponse.fromJson(Map<String, dynamic> json) => PlanResponse(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => PlanData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data];
}
