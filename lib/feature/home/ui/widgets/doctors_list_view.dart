import 'package:appointments_app/feature/home/data/models/response_specialization_model.dart';
import 'package:flutter/material.dart';

import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<DoctorDataModel>? doctorLists;
  const DoctorsListView({super.key, this.doctorLists});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorLists?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorDataModel: doctorLists![index]);
        },
      ),
    );
  }
}
