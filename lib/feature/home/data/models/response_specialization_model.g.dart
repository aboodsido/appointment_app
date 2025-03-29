// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseSpecializationModel _$ResponseSpecializationModelFromJson(
  Map<String, dynamic> json,
) => ResponseSpecializationModel(
  specializationDataList:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => SpecializtionDataModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$ResponseSpecializationModelToJson(
  ResponseSpecializationModel instance,
) => <String, dynamic>{'data': instance.specializationDataList};

SpecializtionDataModel _$SpecializtionDataModelFromJson(
  Map<String, dynamic> json,
) => SpecializtionDataModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  doctorsList:
      (json['doctors'] as List<dynamic>?)
          ?.map((e) => DoctorDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SpecializtionDataModelToJson(
  SpecializtionDataModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctorsList,
};

DoctorDataModel _$DoctorDataModelFromJson(Map<String, dynamic> json) =>
    DoctorDataModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      appointPrice: (json['appoint_price'] as num?)?.toDouble(),
      degree: json['degree'] as String,
    );

Map<String, dynamic> _$DoctorDataModelToJson(DoctorDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'appoint_price': instance.appointPrice,
      'degree': instance.degree,
    };
