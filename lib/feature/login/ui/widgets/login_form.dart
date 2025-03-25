import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            obsecureText: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye, color: ColorManager.grey),
            ),
          ),
        ],
      ),
    );
  }
}
