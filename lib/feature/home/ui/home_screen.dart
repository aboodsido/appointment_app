import 'package:appointments_app/feature/home/logic/cubit/home_cubit.dart';
import 'package:appointments_app/feature/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import 'widgets/doctor_blue_container.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/doctors_speciality_list_view.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              SizedBox(height: 16.h),
              const DoctorsBlueContainer(),
              SizedBox(height: 24.h),
              const DoctorsSpecialitySeeAll(),
              SizedBox(height: 10.h),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) {
                  return current is SpecializationsLoading ||
                      current is SpecializationsSuccess ||
                      current is SpecializationsFailure;
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationsLoading:
                        () => const Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.mainBlue,
                          ),
                        ),
                    specializationsSuccess: (specializtionResponse) {
                      var specializationsDataList =
                          specializtionResponse.specializationDataList;

                      return Expanded(
                        child: Column(
                          children: [
                            DoctorsSpecialityListView(
                              specializtionDataList:
                                  specializationsDataList ?? [],
                            ),
                            SizedBox(height: 20.h),
                            DoctorsListView(
                              doctorLists:
                                  specializationsDataList?[0].doctorsList,
                            ),
                          ],
                        ),
                      );
                    },
                    specializationsFailure:
                        (errorHandler) => const SizedBox.shrink(),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
