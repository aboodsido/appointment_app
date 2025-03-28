import 'package:appointments_app/core/networking/api_error_handler.dart';
import 'package:appointments_app/core/networking/api_result.dart';
import 'package:appointments_app/core/networking/api_service.dart';
import 'package:appointments_app/feature/login/data/model/login_response_model.dart';

import '../model/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {     
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
