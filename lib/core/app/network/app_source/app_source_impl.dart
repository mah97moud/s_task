part of 'app_source.dart';

class AppSourceImpl implements AppSource {
  final AppServiceClient _appServiceClient;

  AppSourceImpl({required AppServiceClient appServiceClient})
      : _appServiceClient = appServiceClient;

  @override
  Future<List<PlanData>> getPlans() async {
    try {
      final response = await _appServiceClient.getPlans();
      return response.data?.toList() ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
