import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart.dart';
import '../../logic/cubit/login_cubit.dart';
import 'password_validations.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController passwordController;

  bool isObsecureText = true;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasUppercase = RegExp(r'[A-Z]').hasMatch(passwordController.text);
        hasLowercase = RegExp(r'[a-z]').hasMatch(passwordController.text);
        hasNumber = RegExp(r'[0-9]').hasMatch(passwordController.text);
        hasSpecialChar = RegExp(
          r'[!@#$%^&*(),.?":{}|<>]',
        ).hasMatch(passwordController.text);
        hasMinLength = passwordController.text.length >= 6;
      });
    });
  }

  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            label: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
              ).hasMatch(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              } else if (!hasMinLength) {
                return 'Password must be at least 6 characters';
              } else if (!hasNumber) {
                return 'Password must contain at least one number';
              } else if (!hasLowercase) {
                return 'Password must contain at least one lowercase letter';
              } else if (!hasSpecialChar) {
                return 'Password must contain at least one special character';
              } else if (!hasUppercase) {
                return 'Password must contain at least one uppercase letter';
              }
            },
            controller: context.read<LoginCubit>().passwordController,
            label: 'Password',
            obsecureText: isObsecureText,
            suffixIcon: GestureDetector(
              onTap:
                  () => setState(() {
                    isObsecureText = !isObsecureText;
                  }),
              child: Icon(
                isObsecureText
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
                color: ColorManager.grey,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          PasswordValidationsWidget(
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
