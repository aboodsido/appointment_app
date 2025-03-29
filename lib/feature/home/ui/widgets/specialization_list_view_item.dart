import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/response_specialization_model.dart';

class SpecializationListViewItem extends StatelessWidget {
  const SpecializationListViewItem({
    super.key,
    required this.specializtionDataModel,
    required this.index,
  });

  final int index;
  final SpecializtionDataModel specializtionDataModel;

  @override
  Widget build(BuildContext context) {
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
          Text(
            specializtionDataModel.name ?? '',
            style: TextStyles.font12DarkBlueNormal,
          ),
        ],
      ),
    );
  }
}
