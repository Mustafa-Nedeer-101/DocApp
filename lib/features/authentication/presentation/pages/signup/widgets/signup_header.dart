import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/core/helpers/spacing.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          CTexts.createAccount,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: CColors.primaryColor, height: 1.5),
        ),

        // Space
        verticalSpacing(CSizes.spaceBtwItems),

        // Paragraph
        Text(
          CTexts.signupPar,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.2),
        ),
      ],
    );
  }
}
