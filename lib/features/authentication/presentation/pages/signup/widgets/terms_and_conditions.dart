import 'package:flutter/material.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GreyWeightRegular),
        TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font13DarkBlueWeightMedium),
        TextSpan(text: ' and', style: TextStyles.font13GreyWeightRegular),
        TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font13DarkBlueWeightMedium.copyWith(height: 1.5)),
      ]),
    );
  }
}
