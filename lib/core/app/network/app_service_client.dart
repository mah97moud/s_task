import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:s_task/core/app/network/dio_factory.dart';
import 'package:s_task/core/app/network/end_points.dart';
import 'package:s_task/features/home/data/responses/plan_response/plan_response.dart';

import '../../../features/home/data/responses/general_response/general_response.dart';

part 'app_service_client.g.dart';

@RestApi(
  baseUrl: baseUrl,
)
abstract class AppServiceClient {
  factory AppServiceClient(
    Dio dio, {
    String baseUrl,
  }) = _AppServiceClient;

  @GET(EndPoints.plans)
  Future<PlanResponse> getPlans();
  @POST(EndPoints.plans)
  Future<GeneralResponse> addPlan(
    @Body() Map<String, dynamic> body,
  );

  @DELETE('${EndPoints.plans}/{id}')
  Future<GeneralResponse> deletePlan(
    @Path('id') String id,
  );
  @PUT('${EndPoints.plans}/{id}')
  Future<GeneralResponse> updatePlan(
    @Path('id') String id,
  );
}
