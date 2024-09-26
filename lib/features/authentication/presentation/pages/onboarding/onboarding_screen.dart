import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/theming/text_styles.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/widgets/get_started_button.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/widgets/onboarding_doc_logo.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/widgets/onboarding_image_stack.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          bottom: 30.h,
        ),
        child: Column(
          children: [
            const OnboardingLogo(),

            // Space
            SizedBox(
              height: 10.h,
            ),

            const OnboardingImageStack(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  // Description Text
                  Text(
                    '''schedule and manage medical appointments with healthcare providers. real-time availability.''',
                    textAlign: TextAlign.center,
                    style: TextStyles.font10GreyWeightRegular,
                  ),

                  // Space
                  SizedBox(
                    height: 30.h,
                  ),

                  // Button
                  const GetStartedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
