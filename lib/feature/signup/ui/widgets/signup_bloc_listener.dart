import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:appointments_app/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:appointments_app/feature/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignupState>(
      listenWhen:
          (previous, current) =>
              current is SignupLoading ||
              current is SignupSuccess ||
              current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading:
              () => showDialog(
                context: context,
                builder:
                    (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.mainBlue,
                      ),
                    ),
              ),
          signupSuccess: (data) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Created Account Successfully !')),
            );
            context.pushReplacementNamed(Routes.loginScreen);
          },
          signupError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: Icon(Icons.error, color: Colors.red),
            content: Text(error, style: TextStyles.font14DarkBlueRegular),
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
