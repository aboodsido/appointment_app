import 'package:flutter/material.dart';

import '../theming/styles.dart';

class TermsAndPrivacyWidget extends StatelessWidget {
  const TermsAndPrivacyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'By logging, you agree to our ',
          style: TextStyles.font11MoreLighterGreyNormal,
          children: [
            TextSpan(
              text: ' Terms & Conditions  ',
              style: TextStyles.font11DarkBlueRegular,
            ),
            TextSpan(
              text: 'and ',
              style: TextStyles.font11MoreLighterGreyNormal,
            ),
            TextSpan(
              text: ' Privacy Policy.',
              style: TextStyles.font11DarkBlueRegular,
            ),
          ],
        ),
      ),
    );
  }
}
