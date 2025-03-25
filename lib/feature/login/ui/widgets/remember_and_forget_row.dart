import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class RememberAndForgetRow extends StatelessWidget {
  const RememberAndForgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              side: BorderSide(color: ColorManager.grey),
              value: false,
              onChanged: (value) {},
              activeColor: ColorManager.mainBlue,
            ),
            Text('Remember me', style: TextStyles.font12GreyNormal),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text('Forget Password?', style: TextStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
