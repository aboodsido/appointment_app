import 'package:appointments_app/core/networking/api_result.dart';
import 'package:appointments_app/core/networking/api_service.dart';
import 'package:appointments_app/feature/signup/data/models/signup_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/signup_request_body.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignUpResponseModel>> signup(SignUpRequestBody body) async {
    try {
      final response = await _apiService.signup(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
