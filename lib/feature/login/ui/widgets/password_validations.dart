import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidationsWidget extends StatelessWidget {
  final bool? hasUppercase;
  final bool? hasLowercase;
  final bool? hasNumber;
  final bool? hasSpecialChar;
  final bool? hasMinLength;

  const PasswordValidationsWidget({
    super.key,
    this.hasUppercase,
    this.hasLowercase,
    this.hasNumber,
    this.hasSpecialChar,
    this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValidationRow('A-Z', hasUppercase),
        ValidationRow('a-z', hasLowercase),
        ValidationRow('0-9', hasNumber),
        ValidationRow('At least 1 special character', hasSpecialChar),
        ValidationRow('At least 6 characters', hasMinLength),
      ],
    );
  }

  Widget ValidationRow(String text, bool? hasValidated) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: ColorManager.grey, radius: 2),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            decorationColor: hasValidated! ? Colors.green : ColorManager.grey,
            decoration:
                hasValidated
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
            color: hasValidated ? Colors.green : ColorManager.grey,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }
}
