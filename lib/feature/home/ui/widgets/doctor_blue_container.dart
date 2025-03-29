import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 190.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0.r),
              image: const DecorationImage(
                image: AssetImage('assets/images/container-blue-pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteRegular,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0.r),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: TextStyles.font12BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            bottom: 0.h,
            child: Image.asset('assets/images/home-doctor.png', height: 230.h),
          ),
        ],
      ),
    );
  }
}
