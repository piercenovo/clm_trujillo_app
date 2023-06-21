import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';

import 'package:clm_trujillo_app/src/core/utils/theme/widget_themes/appbar_theme.dart';
import 'package:clm_trujillo_app/src/core/utils/theme/widget_themes/icon_theme.dart';
import 'package:clm_trujillo_app/src/core/utils/theme/widget_themes/text_theme.dart';
import 'package:clm_trujillo_app/src/core/utils/theme/widget_themes/bottom_navigationBar_theme.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: tPrimaryColor,
    scaffoldBackgroundColor: tSecondaryColor,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
    iconTheme: iconTheme(),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: primaryColor,
    ),
  );
}
