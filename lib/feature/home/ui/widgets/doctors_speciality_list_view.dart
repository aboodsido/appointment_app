import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorManager.lightBlue,
                  child: Image.asset(
                    'assets/images/brain.png',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                SizedBox(height: 8.h),
                Text('Neurologic', style: TextStyles.font12DarkBlueNormal),
              ],
            ),
          );
        },
      ),
    );
  }
}
