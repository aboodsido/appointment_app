import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/response_specialization_model.dart';
import 'specialization_list_view_item.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializtionDataModel?> specializtionDataList;
  const DoctorsSpecialityListView({
    super.key,
    required this.specializtionDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializtionDataList.length,
        itemBuilder: (context, index) {
          return SpecializationListViewItem(
            specializtionDataModel: specializtionDataList[index]!,
            index: index,
          );
        },
      ),
    );
  }
}
