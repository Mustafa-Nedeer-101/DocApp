import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/features/specialities/domain/entities/speciality_entity.dart';
import 'package:maser_project/features/home/widgets/speciality_list/speciality_icon_text.dart';

class DoctorSpecialityList extends StatelessWidget {
  const DoctorSpecialityList({super.key, required this.specialities});

  final List<SpecialityEntity> specialities;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        for (int i = 0; i < 4; i++)
          CustomDoctorSpecialityIconText(
            imageUrl: "assets/images/speciality/general_doctor.png",
            speciality: specialities[i].name ?? 'General',
            itemIndex: i,
          ),
      ]),
    );
  }
}
