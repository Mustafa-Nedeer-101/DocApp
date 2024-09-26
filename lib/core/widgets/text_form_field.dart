import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/theming/text_styles.dart';

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
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: CColors.primaryColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: CColors.lightGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: widget.hintStyle ?? TextStyles.font14LightGreyWeightRegular,
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
        fillColor: widget.backgroundColor ?? CColors.lighterGrey,
        filled: true,
      ),
      obscureText: widget.password ? password : widget.obsecureText ?? false,
      style: TextStyles.font14DarkBlueWeightMedium,
      validator: widget.validator,
    );
  }
}
