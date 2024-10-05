import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? obsecureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool password;
  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.obsecureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.password = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool password = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: widget.contentPadding ??
            const EdgeInsets.symmetric(
                horizontal: CSizes.contentPaddingHorizontal,
                vertical: CSizes.contentPaddingVertical),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: CColors.primaryColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(CSizes.inputFieldRadius),
            ),
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: CColors.lightGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(CSizes.inputFieldRadius),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(CSizes.inputFieldRadius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(CSizes.inputFieldRadius),
        ),
        hintStyle: widget.hintStyle ??
            Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: CColors.lightGrey),
        hintText: widget.hintText,
        suffixIcon: widget.password
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    password = !password;
                  });
                },
                child: Icon(password ? Icons.visibility_off : Icons.visibility),
              )
            : widget.suffixIcon,
        fillColor: widget.backgroundColor ?? CColors.lightestGrey,
        filled: true,
      ),
      obscureText: widget.password ? password : widget.obsecureText ?? false,
      style: Theme.of(context).textTheme.titleMedium,
      validator: widget.validator,
    );
  }
}
