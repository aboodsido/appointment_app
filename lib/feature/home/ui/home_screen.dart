import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_blue_container.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              SizedBox(height: 16.h),
              const DoctorsBlueContainer(),
              // verticalSpace(24.h),
              // const DoctorsSpecialitySeeAll(),
              // verticalSpace(18),
              // const DoctorsSpecialityListView(),
              // verticalSpace(8),
              // const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
