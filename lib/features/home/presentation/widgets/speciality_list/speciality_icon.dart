import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';

class DoctorSpecialityIcon extends StatelessWidget {
  const DoctorSpecialityIcon({
    super.key,
    required this.imageUrl,
    required this.isSelected,
  });

  final String imageUrl;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: CColors.darkBlue,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: CColors.lightPrimary,
          radius: 28,
          child: Image.asset(
            imageUrl,
            width: 42,
            height: 42,
          ),
        ),
      );
    } else {
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
}
