import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          context.pushNamed(Routes.signUpScreen);
        },
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Don\'t have an account yet?',
            style: TextStyles.font11BlackNormal,
            children: [
              TextSpan(text: '  Sign Up', style: TextStyles.font11BlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}
