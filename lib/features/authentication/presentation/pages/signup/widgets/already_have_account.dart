import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/core/helpers/extensions.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: CTexts.alreadyHaveAccount,
            style: Theme.of(context).textTheme.bodyMedium),
        TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => context.pop(),
            text: CTexts.login,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: CColors.primaryColor)),
      ]),
    );
  }
}
