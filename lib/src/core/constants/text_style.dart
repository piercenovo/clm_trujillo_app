import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';
import 'package:flutter/material.dart';

TextStyle textTitleLarge(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.titleLarge!.copyWith(
    fontSize: width * 6,
  );
}

TextStyle textHeadlineLarge(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.headlineLarge!.copyWith(
    fontSize: width * 5,
  );
}

TextStyle textHeadlineMedium(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.headlineMedium!.copyWith(
    fontSize: width * 4.5,
  );
}

TextStyle textHeadlineSmall(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.headlineSmall!.copyWith(
    fontSize: width * 4.2,
  );
}

TextStyle textBodyLarge(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.bodyLarge!.copyWith(
    fontSize: width * 3.8,
  );
}

TextStyle textBodyMedium(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.bodyMedium!.copyWith(
    fontSize: width * 3.6,
  );
}

TextStyle textBodyMediumBold(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.bodyMedium!.copyWith(
    fontSize: width * 3.6,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textBodySmall(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.bodySmall!.copyWith(
    fontSize: width * 3.4,
  );
}

TextStyle textBodySmallBold(BuildContext context) {
  SizeConfig().init(context);
  double width = SizeConfig.blockSizeH!;

  final ThemeData themeData = Theme.of(context);

  return themeData.textTheme.bodySmall!.copyWith(
    fontSize: width * 3.4,
    fontWeight: FontWeight.w500,
  );
}
