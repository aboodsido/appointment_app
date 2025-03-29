import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    width: 110.w,
                    height: 130.h,
                    'https://thumbs.dreamstime.com/b/female-doctor-white-background-medical-people-wearing-hygiene-protective-mask-face-young-asian-professional-looking-girl-lab-178266005.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Natalia Simons',
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Degree | 971-123-4567',
                        style: TextStyles.font12GreyRegular,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'nataliasimons@gmail.com',
                        style: TextStyles.font12GreyRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
