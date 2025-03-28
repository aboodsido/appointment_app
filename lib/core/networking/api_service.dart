import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../feature/home/data/models/response_specialization_model.dart';
import '../../feature/login/data/model/login_request_body.dart';
import '../../feature/login/data/model/login_response_model.dart';
import '../../feature/signup/data/models/signup_request_body.dart';
import '../../feature/signup/data/models/signup_response_model.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignUpResponseModel> signup(
    @Body() SignUpRequestBody signUpRequestBody,
  );

  @GET(ApiConstants.specializationEP)
  Future<ResponseSpecializationModel> getSpecializations();
}
