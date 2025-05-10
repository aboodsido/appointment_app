import 'package:appointments_app/feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/response_specialization_model.dart';
import 'specialization_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializtionDataModel?> specializtionDataList;
  const SpecialityListView({super.key, required this.specializtionDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializtionDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                specializationId: widget.specializtionDataList[index]?.id,
              );
            },
            child: SpecializationListViewItem(
              specializtionDataModel: widget.specializtionDataList[index]!,
              index: index,
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
