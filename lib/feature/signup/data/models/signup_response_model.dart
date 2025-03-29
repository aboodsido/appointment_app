import 'package:json_annotation/json_annotation.dart';

part 'signup_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserDataModel? userData;
  bool? status;
  int? code;

  SignUpResponseModel({this.message, this.userData, this.status, this.code});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
}

@JsonSerializable()
class UserDataModel {
  String? token;
  String? username;

  UserDataModel({required this.token, required this.username});

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
