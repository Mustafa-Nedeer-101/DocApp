import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpacingHelper {
  // Vertical
  static SizedBox verticalSpacing(double height) {
    return SizedBox(
      height: height.h,
    );
  }

  // Horizontal
  static SizedBox horizontalSpacing(double width) {
    return SizedBox(
      width: width.w,
    );
  }
}
