



import 'package:s_task/features/home/data/dto/to_plan_data_model.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_model.dart';

import '../responses/plan_response/plan_response.dart';

extension ToPlanModel on PlanResponse {
  PlanModel toPlanModel() {
    return PlanModel(
      data: data?.map((e) => e.toPlanDataModel()).toList(),
    );
  }
}
