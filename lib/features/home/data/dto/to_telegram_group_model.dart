import 'package:s_task/features/home/data/models/plan_model/telegram_group_model.dart';
import 'package:s_task/features/home/data/responses/plan_response/telegram_group.dart';

extension ToTelegramGroupModel on TelegramGroup {
  TelegramGroupModel toTelegramGroupModel() {
    return TelegramGroupModel(
      id: id ?? 0,
      title: title ?? '',
      merchant: merchant ?? '',
      token: token ?? '',
    );
  }
}