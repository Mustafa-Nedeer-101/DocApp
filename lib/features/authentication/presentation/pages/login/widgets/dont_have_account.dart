import 'package:flutter/material.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/theming/text_styles.dart';
import 'package:maser_project/routing/routes.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.signupScreen),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyles.font13DarkBlueWeightRegular),
          TextSpan(
              text: 'Sign up', style: TextStyles.font13PrimaryWeightRegular),
        ]),
      ),
    );
  }
}
