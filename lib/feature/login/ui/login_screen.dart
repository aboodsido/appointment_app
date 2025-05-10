import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/login_cubit.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/login_bloc_listener.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widgets/login_form.dart';
import 'widgets/remember_and_forget_row.dart';
import '../../../core/widgets/terms_and_privacy.dart';
import 'widgets/welcome_and_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                WelcomeAndTextLogin(),
                SizedBox(height: 32.h),
                LoginForm(),
                SizedBox(height: 16.h),
                RememberAndForgetRow(),
                SizedBox(height: 32.h),
                AppTextButton(
                  buttonText: 'Login',
                  onPressed: () {
                    validateAndLogin(context);
                  },
                ),
                SizedBox(height: 50.h),
                TermsAndPrivacyWidget(),
                SizedBox(height: 50.h),
                DontHaveAccountWidget(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
