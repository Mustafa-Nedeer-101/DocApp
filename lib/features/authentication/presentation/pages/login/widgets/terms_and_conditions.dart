import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/texts.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: CTexts.byLogging,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: CColors.grey)),
        TextSpan(
            text: CTexts.termsAndConditions,
            style: Theme.of(context).textTheme.bodyLarge),
        TextSpan(
            text: CTexts.and,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: CColors.grey)),
        TextSpan(
            text: CTexts.privacyPolicy,
            style: Theme.of(context).textTheme.bodyLarge),
      ]),
    );
  }
}
