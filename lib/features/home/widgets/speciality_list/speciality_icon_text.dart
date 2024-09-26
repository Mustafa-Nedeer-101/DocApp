import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/features/home/widgets/speciality_list/speciality_icon.dart';
import '../../../../core/theming/text_styles.dart';

class CustomDoctorSpecialityIconText extends StatelessWidget {
  const CustomDoctorSpecialityIconText({
    super.key,
    required this.imageUrl,
    required this.speciality,
    required this.itemIndex,
  });
  final String imageUrl;
  final String speciality;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 12.w, end: 12.w),
      child: Column(
        children: [
          // Icon
          DoctorSpecialityIcon(
            imageUrl: imageUrl,
          ),

          // Space
          const SizedBox(
            height: 8.0,
          ),

          // Name
          Text(
            speciality,
            style: TextStyles.font12DarkBlueWeightRegular,
          )
        ],
      ),
    );
  }
}
