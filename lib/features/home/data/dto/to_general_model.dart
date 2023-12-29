

import 'package:s_task/features/home/data/responses/general_response/general_response.dart';

import '../models/general_model/general_model.dart';

extension ToGeneralModel on GeneralResponse {
  GeneralModel get  toGeneralModel {
    return GeneralModel(
      message: message ?? '',
    );
  }
}
