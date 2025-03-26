import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Already have an account yet?',
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
