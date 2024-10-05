import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import '../theme/text_styles.dart';

class CustomDoctorSpecialityIconText extends StatelessWidget {
  const CustomDoctorSpecialityIconText({
    super.key,
    required this.imageUrl,
    required this.speciality,
  });
  final String imageUrl;
  final String speciality;

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

class DoctorSpecialityIcon extends StatelessWidget {
  const DoctorSpecialityIcon({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: CColors.lightPrimary,
      radius: 28,
      child: Image.asset(
        imageUrl,
        width: 40,
        height: 40,
      ),
    );
  }
}
