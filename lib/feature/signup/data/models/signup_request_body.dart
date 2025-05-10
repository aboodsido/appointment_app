import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignUpRequestBody(
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.password,
    this.passwordConfirmation,
  );

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
