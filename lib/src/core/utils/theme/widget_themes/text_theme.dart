import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';

TextTheme textTheme() {
  return const TextTheme(
    titleLarge: TextStyle(
      color: tWhiteColor,
      fontFamily: tFFDMSans,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: tExtraLightGrayColor,
      fontFamily: tFFDMSans,
    ),
    titleSmall: TextStyle(
      color: tExtraLightGrayColor,
      fontFamily: tFFDMSans,
    ),
    headlineLarge: TextStyle(
      color: tExtraLightGrayColor,
      fontFamily: tFFDMSans,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      color: tExtraLightGrayColor,
      fontFamily: tFFDMSans,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      color: tWhiteColor,
      fontFamily: tFFDMSans,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: tExtraLightGrayColor,
      fontFamily: tFFDMSans,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      color: tDarkLightColor,
      fontFamily: tFFDMSans,
    ),
    bodySmall: TextStyle(
      color: tExtraLightGrayColor,
      fontFamily: tFFDMSans,
    ),
  );
}
