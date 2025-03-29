import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  AppTextButton({
    super.key,
    this.borderRadius,
    required this.buttonText,
    this.buttonTextStyle,
    required this.onPressed,
    this.backgroundColor,
    this.buttonWidth,
    this.buttonHeight,
  });

  final double? borderRadius;
  final String? buttonText;
  final TextStyle? buttonTextStyle;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(buttonWidth ?? double.infinity, buttonHeight ?? 50.h),
        backgroundColor: backgroundColor ?? ColorManager.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText!,
        style: buttonTextStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
