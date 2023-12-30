import 'package:s_task/core/app/network/error_handler.dart';
import 'package:s_task/core/app/network/network_info.dart';
import 'package:s_task/core/helpers/result.dart';
import 'package:s_task/features/home/data/dto/to_general_model.dart';
import 'package:s_task/features/home/data/dto/to_plan_data_model_list.dart';
import 'package:s_task/features/home/data/models/plan_model/plan_data_model.dart';

import '../../../../features/home/data/models/general_model/general_model.dart';
import '../app_source/app_source.dart';

part '../../../../features/home/repository/repository_impl.dart';

abstract class Repository {
  Future<Result<List<PlanDataModel>, Exception>> getPlans();
  Future<Result<GeneralModel, Exception>> addPlan({
    required Map<String, dynamic> body,
  });
  Future<Result<GeneralModel, Exception>> deletePlan({
    required String id,
  });

  Future<Result<GeneralModel, Exception>> updatePlan({
    required String id,
    required Map<String, dynamic> body,
  }){
    throw UnimplementedError();
  }
}
