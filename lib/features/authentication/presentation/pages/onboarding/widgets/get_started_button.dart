// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/theming/text_styles.dart';
import 'package:maser_project/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(CColors.primaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 52)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteWeightSemiBold,
      ),
    );
  }
}
