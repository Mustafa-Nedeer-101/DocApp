import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/features/home/presentation/widgets/speciality_list/speciality_icon_text.dart';

class DoctorSpecialityList extends StatelessWidget {
  const DoctorSpecialityList(
      {super.key,
      this.itemCount,
      required this.imagesUrl,
      required this.specialities});

  final int? itemCount;
  final List<String> imagesUrl;
  final List<String> specialities;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount ?? 4,
        itemBuilder: (context, index) {
          return CustomDoctorSpecialityIconText(
            imageUrl: imagesUrl[index],
            speciality: specialities[index],
            itemIndex: index,
            selectedIndex: 1,
          );
        },
      ),
    );
  }
}
