import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/styles.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import 'doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorsSuccess || current is DoctorsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return DoctorsListView(doctorLists: doctorsList);
          },
          doctorsFailure: () => const SizedBox.shrink(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
