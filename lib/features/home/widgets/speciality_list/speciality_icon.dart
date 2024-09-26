import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

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
