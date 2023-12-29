import 'package:equatable/equatable.dart';
import 'package:s_task/features/home/data/responses/plan_response/plan_desc_response/plan_desc_response.dart';

import 'telegram_group.dart';

class PlanData extends Equatable {
  final int? id;
  final String? nameChannel;
  final String? name;
  final int? discount;
  final int? price;
  final String? percentage1;
  final dynamic percentage2;
  final dynamic percentage3;
  final dynamic numberBot;
  final List<PlanDescResponse>? planDesc;
  final List<TelegramGroup>? telegramGroups;

  const PlanData({
    this.id,
    this.nameChannel,
    this.name,
    this.discount,
    this.price,
    this.percentage1,
    this.percentage2,
    this.percentage3,
    this.numberBot,
    this.planDesc,
    this.telegramGroups,
  });

  factory PlanData.fromJson(Map<String, dynamic> json) => PlanData(
        id: json['id'] as int?,
        nameChannel: json['nameChannel'] as String?,
        name: json['name'] as String?,
        discount: json['discount'] as int?,
        price: json['price'] as int?,
        percentage1: json['percentage1'] as String?,
        percentage2: json['percentage2'] as dynamic,
        percentage3: json['percentage3'] as dynamic,
        numberBot: json['number_bot'] as dynamic,
        planDesc: (json['plan_desc'] as List<dynamic>?)
            ?.map((e) => PlanDescResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
        telegramGroups: (json['telegram_groups'] as List<dynamic>?)
            ?.map((e) => TelegramGroup.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameChannel': nameChannel,
        'name': name,
        'discount': discount,
        'price': price,
        'percentage1': percentage1,
        'percentage2': percentage2,
        'percentage3': percentage3,
        'number_bot': numberBot,
        'plan_desc': planDesc?.map((e) => e.toJson()).toList(),
        'telegram_groups': telegramGroups?.map((e) => e.toJson()).toList(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      nameChannel,
      name,
      discount,
      price,
      percentage1,
      percentage2,
      percentage3,
      numberBot,
      planDesc,
      telegramGroups,
    ];
  }
}
