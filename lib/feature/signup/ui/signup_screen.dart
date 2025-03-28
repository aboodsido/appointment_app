import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/terms_and_privacy.dart';
import '../logic/cubit/sign_up_cubit.dart';
import 'widgets/already_have_account.dart';
import 'widgets/signup_bloc_listener.dart';
import 'widgets/signup_form.dart';
import 'widgets/welcome_and_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreateAccountAndTextSignUp(),
                SizedBox(height: 32.h),
                SignUpForm(),
                SizedBox(height: 32.h),
                AppTextButton(
                  buttonText: 'Sign Up',
                  onPressed: () {
                    validateAndSignUp(context);
                  },
                ),
                SizedBox(height: 50.h),
                TermsAndPrivacyWidget(),
                SizedBox(height: 50.h),
                AlreadyHaveAccountWidget(),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpState();
    }
  }
}
