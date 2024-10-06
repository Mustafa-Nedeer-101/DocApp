import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/font_weights.dart';

class TTextTheme {
  TTextTheme._();

  // Text theme for light mode
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: CWeights.fontWeightExtraBold,
        color: CColors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: CWeights.fontWeightBold,
        color: CColors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20,
        fontWeight: CWeights.fontWeightSemiBold,
        color: CColors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 18,
        fontWeight: CWeights.fontWeightSemiBold,
        color: CColors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightMedium,
        color: CColors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightRegular,
        color: CColors.black.withOpacity(0.8)), // new added opacity
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightMedium,
        color: CColors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightRegular,
        color: CColors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightLight,
        color: CColors.black.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightLight,
        color: CColors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightExtraLight,
        color: CColors.black.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightThin,
        color: CColors.black.withOpacity(0.5)),
  );

  // Text theme for light mode
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: CWeights.fontWeightExtraBold,
        color: CColors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: CWeights.fontWeightBold,
        color: CColors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20,
        fontWeight: CWeights.fontWeightSemiBold,
        color: CColors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 18,
        fontWeight: CWeights.fontWeightSemiBold,
        color: CColors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightMedium,
        color: CColors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: CWeights.fontWeightRegular,
        color: CColors.white.withOpacity(0.8)), // new added opacity
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightMedium,
        color: CColors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightRegular,
        color: CColors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: CWeights.fontWeightLight,
        color: CColors.white.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightLight,
        color: CColors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightExtraLight,
        color: CColors.white.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: CWeights.fontWeightThin,
        color: CColors.white.withOpacity(0.5)),
  );
}
