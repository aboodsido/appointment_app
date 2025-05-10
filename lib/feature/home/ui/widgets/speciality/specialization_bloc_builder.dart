import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import '../doctors/doctors_shimmer_loading.dart';
import 'speciality_list_view.dart';
import 'speciality_shimmer_loading.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is SpecializationsLoading ||
            current is SpecializationsSuccess ||
            current is SpecializationsFailure;
      },
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: setupLoading,
          specializationsSuccess: setupSuccess,
          specializationsFailure: setupError,
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError(errorHandler) => const SizedBox.shrink();

  Widget setupSuccess(specializationDataList) {
    var specializationsDataList = specializationDataList;

    return SpecialityListView(
      specializtionDataList: specializationsDataList ?? [],
    );
  }

  Widget setupLoading() => Expanded(
    child: Column(
      children: [
        const SpecialityShimmerLoading(),
        SizedBox(height: 12.h),
        const DoctorsShimmerLoading(),
      ],
    ),
  );
}
