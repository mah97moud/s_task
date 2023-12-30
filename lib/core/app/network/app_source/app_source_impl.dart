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

  @override
  Future<GeneralResponse> addPlan({
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await _appServiceClient.addPlan(
        body,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GeneralResponse> deletePlan({required String id}) async {
    try {
      final response = await _appServiceClient.deletePlan(
        id,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GeneralResponse> updatePlan({
    required String id,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await _appServiceClient.updatePlan(
        id,
        body,
      );

      if (response != 150) {
        return const GeneralResponse(message: 'Update plan successfully');
      } else {
        return const GeneralResponse(message: 'Update plan failed');
      }
    } catch (e) {
      rethrow;
    }
  }
}
