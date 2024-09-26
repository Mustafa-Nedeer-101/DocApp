import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/features/home/presentation/widgets/speciality_list/speciality_icon.dart';
import '../../../../../core/theming/text_styles.dart';

class CustomDoctorSpecialityIconText extends StatelessWidget {
  const CustomDoctorSpecialityIconText(
      {super.key,
      required this.imageUrl,
      required this.speciality,
      required this.itemIndex,
      required this.selectedIndex});
  final String imageUrl;
  final String speciality;
  final int itemIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          // Icon
          DoctorSpecialityIcon(
            imageUrl: imageUrl,
            isSelected: selectedIndex == itemIndex,
          ),

          // Space
          const SizedBox(
            height: 8.0,
          ),

          // Name
          Text(
            speciality,
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueWeightBold
                : TextStyles.font12DarkBlueWeightRegular,
          )
        ],
      ),
    );
  }
}
