import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/texts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          CTexts.welcomeBack,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: CColors.primaryColor, height: 1.5),
        ),

        // Space
        const SizedBox(height: CSizes.spaceBtwItems),

        // Paragraph
        Text(
          CTexts.loginPar,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.2),
        ),
      ],
    );
  }
}
