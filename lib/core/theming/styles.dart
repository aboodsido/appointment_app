import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class TextStyles {
  static final font24Black700wight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static final font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.mainBlue,
  );
  static final font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: ColorManager.grey,
  );
  static final font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
