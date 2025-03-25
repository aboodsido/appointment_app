import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormField(controller: emailController, label: 'Email'),
          SizedBox(height: 16.h),
          AppTextFormField(
            controller: passwordController,
            label: 'Password',
            obsecureText: isObsecureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              icon: Icon(
                isObsecureText
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
                color: ColorManager.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
