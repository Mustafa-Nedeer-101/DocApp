import 'package:flutter/material.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';

import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({
    super.key,
    required this.doctors,
  });

  final List<DoctorEntity> doctors;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return DoctorsListViewItem(
          doctor: doctors[index],
        );
      },
    );
  }
}
