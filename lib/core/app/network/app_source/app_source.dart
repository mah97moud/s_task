import '../../../../features/home/data/responses/general_response/general_response.dart';
import '../../../../features/home/data/responses/plan_response/plan_data.dart';
import '../app_service_client.dart';

part 'app_source_impl.dart';

abstract class AppSource {
  Future<List<PlanData>> getPlans();
  Future<GeneralResponse> addPlan({
    required Map<String, dynamic> body,
  });
  Future<GeneralResponse> deletePlan({
    required String id,
  });
  Future<GeneralResponse> updatePlan({
    required String id,
    required Map<String, dynamic> body,
  });
}
