import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';

class DoctorAndTextWidget extends StatelessWidget {
  const DoctorAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/background-onboarding.svg',
          fit: BoxFit.cover,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: [0.2, 0.5],
            ),
          ),
          child: Image.asset(
            'assets/images/onboarding-doctor.png',
            height: 530.h,
            width: 375.w,
          ),
        ),
        Positioned(
          bottom: 0.h,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
