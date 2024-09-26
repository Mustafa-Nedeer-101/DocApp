import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maser_project/core/constants/image_strings.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class OnboardingLogo extends StatelessWidget {
  const OnboardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      // Logo
      SvgPicture.asset(
        CImages.appLogo,
        height: 50.h,
        width: 50.w,
      ),

      SizedBox(
        width: 10.w,
      ),

      // text
      Text(
        'DocDoc',
        style: TextStyles.font24BlackWeightBold,
      ),
    ]);
  }
}
