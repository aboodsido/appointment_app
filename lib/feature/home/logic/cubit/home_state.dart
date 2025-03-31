import '../../data/models/response_specialization_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //Specializations States
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(
    List<SpecializtionDataModel>? specializationDataList,
  ) = SpecializationsSuccess;
  const factory HomeState.specializationsFailure(String errorHandler) =
      SpecializationsFailure;

  //Doctor States
  const factory HomeState.doctorsSuccess(List<DoctorDataModel>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsFailure(String errorHandler) =
      DoctorsFailure;
}
