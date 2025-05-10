import 'package:appointments_app/core/networking/api_result.dart';
import 'package:appointments_app/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/response_specialization_model.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<ResponseSpecializationModel>> getSpecializations() async {
    try {
      final response = await _apiService.getSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
