import 'package:s_task/features/home/data/models/plan_model/plan_desc_model/plan_desc_model.dart';
import 'package:s_task/features/home/data/responses/plan_response/plan_desc_response/plan_desc_response.dart';

extension ToPlanDescModel on PlanDescResponse {
  PlanDescModel toPlanDescModel() {
    return PlanDescModel(
      desc: desc,
    );
  }
}
