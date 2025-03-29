import 'package:json_annotation/json_annotation.dart';

part 'response_specialization_model.g.dart';

@JsonSerializable()
class ResponseSpecializationModel {
  @JsonKey(name: "data")
  List<SpecializtionDataModel>? specializationDataList;

  ResponseSpecializationModel({this.specializationDataList});

  factory ResponseSpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseSpecializationModelFromJson(json);
}

@JsonSerializable()
class SpecializtionDataModel {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<DoctorDataModel>? doctorsList;

  SpecializtionDataModel({this.id, this.name, this.doctorsList});

  factory SpecializtionDataModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializtionDataModelFromJson(json);
}

@JsonSerializable()
class DoctorDataModel {
  int? id;
  String? name;
  String? photo;
  String? email;
  String? phone;
  String? gender;
  @JsonKey(name: "appoint_price")
  num? appointPrice;
  String degree;

  DoctorDataModel({
    this.id,
    this.name,
    this.photo,
    this.email,
    this.phone,
    this.gender,
    this.appointPrice,
    required this.degree,
  });

  factory DoctorDataModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorDataModelFromJson(json);
}
