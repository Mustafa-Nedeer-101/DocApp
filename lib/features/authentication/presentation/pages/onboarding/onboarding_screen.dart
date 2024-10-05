import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/widgets/get_started_button.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/widgets/onboarding_doc_logo.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/widgets/onboarding_image_stack.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: CSizes.defaultSpace,
          bottom: CSizes.xxx,
        ),
        child: Column(
          children: [
            const OnboardingLogo(),

            // Space
            const SizedBox(
              height: CSizes.spaceBtwItems,
            ),

            const OnboardingImageStack(),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
              child: Column(
                children: [
                  // Description Text
                  Text(
                    CTexts.onboardingDescription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: CColors.grey,
                        ),
                  ),

                  // Space
                  const SizedBox(
                    height: CSizes.spaceBtwSections,
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
