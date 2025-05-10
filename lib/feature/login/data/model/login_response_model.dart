import 'package:json_annotation/json_annotation.dart';

import 'user_data_model.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserDataModel? userData;
  bool? status;
  int? code;

  LoginResponseModel({this.message, this.userData, this.status, this.code});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
