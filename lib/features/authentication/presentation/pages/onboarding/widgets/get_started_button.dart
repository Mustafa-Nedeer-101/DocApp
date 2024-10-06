import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushReplacementNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(CColors.primaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        CTexts.getStarted,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: CColors.white),
      ),
    );
  }
}
