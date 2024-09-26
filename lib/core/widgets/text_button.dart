import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.onpressed,
      this.backgroundColor,
      required this.buttonText,
      this.borderRadius,
      this.verticalPadding,
      this.horizontalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.textStyle});

  final String buttonText;
  final void Function()? onpressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? CColors.primaryColor),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16))),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            vertical: verticalPadding?.h ?? 14.h,
            horizontal: horizontalPadding?.w ?? 12.w)),
        fixedSize: WidgetStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 50.h)),
      ),
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
