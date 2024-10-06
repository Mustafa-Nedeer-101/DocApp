import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maser_project/core/constants/images.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/texts.dart';

class OnboardingLogo extends StatelessWidget {
  const OnboardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      // Logo
      SvgPicture.asset(
        CImages.appLogo,
        width: CSizes.iconLg,
        height: CSizes.iconLg,
      ),

      const SizedBox(
        width: CSizes.sm,
      ),

      // text
      Text(
        CTexts.logoName,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    ]);
  }
}
