import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void emitGetSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success:
          (specializtionResponse) =>
              emit(HomeState.specializationsSuccess(specializtionResponse)),
      failure:
          (errorHandler) => emit(
            HomeState.specializationsFailure(
              errorHandler.apiErrorModel.message ?? '',
            ),
          ),
    );
  }
}
