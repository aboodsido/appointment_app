import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static final font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static final font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.mainBlue,
  );
  static final font28BlueBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.mainBlue,
  );
  static final font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.grey,
  );
  static final font14GreyNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.grey,
  );
  static final font12GreyNormal = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.grey,
  );
  static final font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static final font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.mainBlue,
  );
  static final font14DarkBlueRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.darkBlue,
  );
  static final font11DarkBlueRegular = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.darkBlue,
  );
  static final font11MoreLighterGreyNormal = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.moreLighterGrey,
  );
  static final font11BlackNormal = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.normal,
    color: Colors.black,
  );
  static final font11BlueRegular = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.mainBlue,
  );
}
