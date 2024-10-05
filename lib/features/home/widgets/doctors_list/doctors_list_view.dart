import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/common_widgets/doctor_card.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';

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
      itemCount: 4,
      itemBuilder: (context, index) {
        return CustomDoctorCard(
          elevation: 0.0,
          color: CColors.white,
          doctor: doctors[index],
        );
      },
    );
  }
}
