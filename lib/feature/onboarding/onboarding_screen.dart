import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';
import 'widgets/doctor_and_text.dart';
import 'widgets/get_started_button.dart';
import 'widgets/logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
          child: Column(
            children: [
              LogoAndNameWidget(),
              SizedBox(height: 30.h),
              DoctorAndTextWidget(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  textAlign: TextAlign.center,
                  style: TextStyles.font12GreyRegular,
                ),
              ),
              SizedBox(height: 30.h),
              GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
