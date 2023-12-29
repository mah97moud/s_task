import 'package:s_task/features/home/data/dto/to_plan_data_model.dart';

import '../models/plan_model/plan_data_model.dart';
import '../responses/plan_response/plan_data.dart';

extension ToPlanDataModelList on List<PlanData> {
  List<PlanDataModel> get toPlanDataModelList {
    return map((e) => e.toPlanDataModel()).toList();
  }
}
