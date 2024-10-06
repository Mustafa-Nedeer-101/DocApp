import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/sizes.dart';
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
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? CColors.primaryColor),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                borderRadius ?? CSizes.inputFieldRadius))),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            vertical: verticalPadding ?? CSizes.lg,
            horizontal: horizontalPadding ?? CSizes.md)),
        fixedSize: WidgetStateProperty.all(Size(buttonWidth ?? double.maxFinite,
            buttonHeight ?? CSizes.inputFieldButtonHeight)),
      ),
      child: Text(
        buttonText,
        style: textStyle ?? Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
