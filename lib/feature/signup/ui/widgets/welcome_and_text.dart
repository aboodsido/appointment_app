import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class CreateAccountAndTextSignUp extends StatelessWidget {
  const CreateAccountAndTextSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Create Account', style: TextStyles.font28BlueBold),
        SizedBox(height: 8.h),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: TextStyles.font14GreyNormal,
        ),
      ],
    );
  }
}
