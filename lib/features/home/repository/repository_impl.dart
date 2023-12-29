part of '../../../core/app/network/repository/repository.dart';

class HomeRepositoryImpl implements Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  HomeRepositoryImpl(
      {required NetworkInfo networkInfo, required AppSource appSource})
      : _appSource = appSource,
        _networkInfo = networkInfo;

  @override
  Future<Result<List<PlanDataModel>, Exception>> getPlans() async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(error: Exception(), message: 'No internet connection');
    }

    try {
      final response = await _appSource.getPlans();
      var plansModels = response.toPlanDataModelList;
      return Success(data: plansModels);
    } on Exception catch (e) {
      return Failure(error: e, message: ErrorHandler.handle(e).message);
    }
  }

  @override
  Future<Result<GeneralModel, Exception>> addPlan({
    required Map<String, dynamic> body,
  }) async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(error: Exception(), message: 'No internet connection');
    }

    try {
      final response = await _appSource.addPlan(
        body: body,
      );
      return Success(data: response.toGeneralModel);
    } on Exception catch (e) {
      return Failure(error: e, message: ErrorHandler.handle(e).message);
    }
  }

  @override
  Future<Result<GeneralModel, Exception>> deletePlan(
      {required String id}) async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(error: Exception(), message: 'No internet connection');
    }

    try {
      final response = await _appSource.deletePlan(
        id: id,
      );
      return Success(data: response.toGeneralModel);
    } on Exception catch (e) {
      return Failure(error: e, message: ErrorHandler.handle(e).message);
    }
  }
}
