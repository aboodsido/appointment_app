import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font11BlackNormal,
            children: [
              TextSpan(text: '  Sign In', style: TextStyles.font11BlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}
