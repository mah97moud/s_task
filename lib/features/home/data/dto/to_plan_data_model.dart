import 'package:s_task/features/home/data/dto/to_plan_desc_model.dart';
import 'package:s_task/features/home/data/dto/to_telegram_group_model.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';
import 'package:s_task/features/home/data/responses/plan_response/plan_data.dart';

extension ToPlanDataModel on PlanData {
  PlanDataModel toPlanDataModel() {
    return PlanDataModel(
      id: id ?? 0,
      nameChannel: nameChannel ?? '',
      name: name ?? '',
      discount: discount ?? 0,
      price: price ?? 0,
      percentage1: percentage1 ?? '',
      percentage2: percentage2,
      percentage3: percentage3,
      numberBot: numberBot,
      planDesc: planDesc?.map((e) => e.toPlanDescModel()).toList(),
      telegramGroups:
          telegramGroups?.map((e) => e.toTelegramGroupModel()).toList(),
    );
  }
}
