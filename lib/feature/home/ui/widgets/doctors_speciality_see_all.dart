import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctors Speciality', style: TextStyles.font18DarkBlueSemiBold),
        const Spacer(),
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {},
          child: Text('See All', style: TextStyles.font12BlueNormal),
        ),
      ],
    );
  }
}
