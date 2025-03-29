import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class WelcomeAndTextLogin extends StatelessWidget {
  const WelcomeAndTextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome Back', style: TextStyles.font28BlueBold),
        SizedBox(height: 8.h),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: TextStyles.font14GreyNormal,
        ),
      ],
    );
  }
}
