import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/routing/routes.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: CTexts.dontHaveAccount,
            style: Theme.of(context).textTheme.bodyMedium),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.pushNamed(Routes.signupScreen),
            text: CTexts.signup,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: CColors.primaryColor)),
      ]),
    );
  }
}
