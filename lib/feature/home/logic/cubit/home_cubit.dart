import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/response_specialization_model.dart';
import '../../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial());

  List<SpecializtionDataModel>? specializations = [];
  void emitGetSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success: (specializtionResponse) {
        specializations = specializtionResponse.specializationDataList ?? [];

        getDoctorsList(specializationId: specializations?.first.id);
        emit(HomeState.specializationsSuccess(specializations));
      },
      failure:
          (apiErrorModel) =>
              emit(HomeState.specializationsFailure(apiErrorModel)),
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<DoctorDataModel>? doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsFailure());
    }
  }

  getDoctorsListBySpecializationId(specializationId) {
    return specializations!
        .firstWhere((specialization) => specialization.id == specializationId)
        .doctorsList;
  }
}
