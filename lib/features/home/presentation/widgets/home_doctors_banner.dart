import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/helpers/spacing.dart';
import 'package:maser_project/core/theme/text_styles.dart';

class HomeDoctorsBanner extends StatelessWidget {
  const HomeDoctorsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: const Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Blue Container
          BlueContainerBackground(),

          // Doctor Image
          DoctorImage(),
        ],
      ),
    );
  }
}

class BlueContainerBackground extends StatelessWidget {
  const BlueContainerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.h,

      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        image: const DecorationImage(
          image: AssetImage('assets/images/home_banner_background.png'),
          fit: BoxFit.cover,
        ),
      ),

      // FindNearby
      child: const FindNearby(),
    );
  }
}

class FindNearby extends StatelessWidget {
  const FindNearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text
        Text(
          'Book and\nSchedule with\nnearest Doctor',
          style: TextStyles.font18WhiteWeightMedium,
          textAlign: TextAlign.start,
        ),

        // Space
        verticalSpacing(16),

        // Button
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: CColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48)),
            ),
            child: Text(
              'Find Nearby',
              style: TextStyles.font12PrimaryWeightRegular,
            ),
          ),
        ),
      ],
    );
  }
}

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8.w,
      top: 0,
      child: Image.asset(
        'assets/images/home_banner_doctor.png',
        height: 200.h,
      ),
    );
  }
}
