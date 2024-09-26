import 'package:flutter/material.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'Already have an account?',
              style: TextStyles.font13DarkBlueWeightRegular),
          TextSpan(text: 'Login', style: TextStyles.font13PrimaryWeightRegular),
        ]),
      ),
    );
  }
}
