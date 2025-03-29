import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_blue_container.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/doctors_speciality_list_view.dart';
import 'widgets/doctors_speciality_see_all.dart';
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
              SizedBox(height: 24.h),
              const DoctorsSpecialitySeeAll(),
              SizedBox(height: 18.h),
              const DoctorsSpecialityListView(),
              SizedBox(height: 8.h),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
