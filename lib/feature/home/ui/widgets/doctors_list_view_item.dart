import 'package:appointments_app/feature/home/data/models/response_specialization_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final DoctorDataModel? doctorDataModel;
  const DoctorsListViewItem({super.key, required this.doctorDataModel});

  @override
  Widget build(BuildContext context) {
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
                  doctorDataModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.h),
                Text(
                  '${doctorDataModel?.degree} | ${doctorDataModel?.phone}',
                  style: TextStyles.font12GreyRegular,
                ),
                SizedBox(height: 5.h),
                Text(
                  '${doctorDataModel?.email}',
                  style: TextStyles.font12GreyRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
