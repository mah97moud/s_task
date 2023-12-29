import '../../../../features/home/data/responses/plan_response/plan_data.dart';
import '../app_service_client.dart';

part 'app_source_impl.dart';


abstract class AppSource {
  Future<List<PlanData>> getPlans();
}