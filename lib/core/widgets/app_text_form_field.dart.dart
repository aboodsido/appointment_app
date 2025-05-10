import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  AppTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.obsecureText,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.suffixIcon,
    required this.validator,
  });
  TextEditingController? controller;
  String? label;
  bool? obsecureText;
  EdgeInsetsGeometry? contentPadding;
  InputBorder? focusedBorder;
  InputBorder? enabledBorder;
  Widget? suffixIcon;
  Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator(value),
      cursorColor: ColorManager.mainBlue,
      cursorRadius: Radius.circular(16),
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        labelText: label,
        floatingLabelStyle: TextStyles.font14GreyNormal.copyWith(
          color: ColorManager.mainBlue,
        ),
        labelStyle: TextStyles.font14GreyNormal,
        filled: true,
        fillColor: ColorManager.lighterGrey,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(width: 1, color: ColorManager.lightGrey),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
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
        focusColor: ColorManager.mainBlue,
        suffixIcon: suffixIcon,
      ),
      style: TextStyles.font14DarkBlueRegular,
      obscureText: obsecureText ?? false,
    );
  }
}
