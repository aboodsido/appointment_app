import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/extentions.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading:
              () => showDialog(
                context: context,
                builder:
                    (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.mainBlue,
                      ),
                    ),
              ),
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (apiErrorModle) {
            setupErrorState(context, apiErrorModle);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModle) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: Icon(Icons.error, color: Colors.red),
            content: Text(
              apiErrorModle.getAllErrorMessages(),
              style: TextStyles.font14DarkBlueRegular,
            ),
            actions: [
              TextButton(
                onPressed: () => context.pop(),
                child: Text('OK', style: TextStyles.font11BlueRegular),
              ),
            ],
          ),
    );
  }
}
