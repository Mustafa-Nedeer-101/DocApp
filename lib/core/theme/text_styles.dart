import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/font_weights.dart';

class TextStyles {
  static TextStyle font24BlackWeightBold = TextStyle(
      fontSize: 24.sp,
      color: Colors.black,
      fontWeight: CWeights.fontWeightBold);

  static TextStyle font32PrimaryWeightBold = TextStyle(
    fontSize: 32.sp,
    color: CColors.primaryColor,
    fontWeight: CWeights.fontWeightBold,
  );

  static TextStyle font24PrimaryWeightBold = const TextStyle(
    fontSize: 24,
    color: CColors.primaryColor,
    fontWeight: CWeights.fontWeightBold,
  );

  static TextStyle font12GreyWeightRegular = TextStyle(
    fontSize: 12.sp,
    color: CColors.grey,
    fontWeight: CWeights.fontWeightRegular,
  );

  // Used in Home Page Banner ButtonTextStyle(
  static TextStyle font12PrimaryWeightRegular = TextStyle(
    fontSize: 12.sp,
    color: CColors.primaryColor,
    fontWeight: CWeights.fontWeightRegular,
  );

  static TextStyle font12DarkBlueWeightRegular = TextStyle(
      fontSize: 12.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font12GreyWeightMedium = TextStyle(
      fontSize: 12.sp,
      color: CColors.grey,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font13PrimaryWeightRegular = TextStyle(
    fontSize: 13.sp,
    color: CColors.primaryColor,
    fontWeight: CWeights.fontWeightRegular,
  );

  static TextStyle font13DarkBlueWeightRegular = TextStyle(
      fontSize: 13.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font13GreyWeightRegular = TextStyle(
      fontSize: 13.sp,
      color: Colors.grey,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font13DarkBlueWeightMedium = TextStyle(
      fontSize: 13.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font10GreyWeightRegular = TextStyle(
      fontSize: 10.sp,
      color: Colors.grey,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font14LightGreyWeightRegular = TextStyle(
      fontSize: 14.sp,
      color: CColors.lightGrey,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font14GreyWeightRegular = TextStyle(
      fontSize: 14.sp,
      color: CColors.grey,
      fontWeight: CWeights.fontWeightRegular);

  static TextStyle font14DarkBlueWeightMedium = TextStyle(
      fontSize: 14.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font14DarkBlueWeightBold = TextStyle(
      fontSize: 14.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightBold);

  static TextStyle font14BlueWeightSemiBold = TextStyle(
      fontSize: 14.sp,
      color: CColors.primaryColor,
      fontWeight: CWeights.fontWeightSemiBold);

  static TextStyle font15DarkBlueWeightMedium = TextStyle(
      fontSize: 15.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightMedium);

  static TextStyle font16WhiteWeightSemiBold = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: CWeights.fontWeightSemiBold);

  // Used in HomeAppBar
  static TextStyle font18DarkBlueWeightBold = TextStyle(
      fontSize: 18.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightBold);

  // Used in CustomSectionHeader
  static TextStyle font18DarkBlueWeightSemiBold = TextStyle(
      fontSize: 18.sp,
      color: CColors.darkBlue,
      fontWeight: CWeights.fontWeightBold);

  // Used in the Hame Page Banner Text
  static TextStyle font18WhiteWeightMedium = TextStyle(
      fontSize: 15.sp,
      color: CColors.white,
      fontWeight: CWeights.fontWeightMedium);
}
