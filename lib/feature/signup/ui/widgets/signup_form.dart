import 'package:appointments_app/core/theming/colors.dart';
import 'package:appointments_app/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_form_field.dart.dart';
import 'password_validations.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController passwordController;

  bool isObsecureText = true;
  bool isObsecureConfirmText = true;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
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
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignUpCubit>().nameCotroller,
            label: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
            },
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            controller: context.read<SignUpCubit>().emailController,
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
            controller: context.read<SignUpCubit>().phoneController,
            label: 'Phone',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone';
              }
            },
          ),
          SizedBox(height: 16.h),
          DropdownButtonFormField<int>(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 18.h,
              ),
              labelText: 'Gender',
              floatingLabelStyle: TextStyles.font14GreyNormal.copyWith(
                color: ColorManager.mainBlue,
              ),
              labelStyle: TextStyles.font14GreyNormal,
              filled: true,
              fillColor: ColorManager.lighterGrey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(width: 1, color: ColorManager.lightGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(width: 1, color: ColorManager.mainBlue),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              // focusColor: ColorManager.mainBlue,
            ),
            value:
                context.read<SignUpCubit>().genderController.text.isNotEmpty
                    ? int.parse(
                      context.read<SignUpCubit>().genderController.text,
                    )
                    : null,
            items: [
              DropdownMenuItem(value: 0, child: Text('Male')),
              DropdownMenuItem(value: 1, child: Text('Female')),
            ],
            onChanged: (value) {
              context.read<SignUpCubit>().genderController.text =
                  value.toString();
            },
            validator: (value) {
              if (value == null) {
                return 'Please select your gender';
              }
              return null;
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
            controller: context.read<SignUpCubit>().passwordController,
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
          AppTextFormField(
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            label: 'Confirm Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password confirmation';
              } else if (value !=
                  context.read<SignUpCubit>().passwordController.text) {
                return 'Passwords do not match';
              }
            },
            obsecureText: isObsecureConfirmText,
            suffixIcon: GestureDetector(
              onTap:
                  () => setState(() {
                    isObsecureConfirmText = !isObsecureConfirmText;
                  }),
              child: Icon(
                isObsecureConfirmText
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
