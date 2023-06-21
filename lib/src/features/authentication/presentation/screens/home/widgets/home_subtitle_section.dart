import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

class HomeSubtitleSection extends StatelessWidget {
  const HomeSubtitleSection({
    required this.screen,
    required this.subtitleLeft,
    required this.subtitleRight,
    required this.showLogo,
    super.key,
  });

  final Widget screen;
  final String subtitleLeft;
  final String subtitleRight;
  final bool showLogo;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Padding(
      padding: EdgeInsets.only(
        top: height * 2,
        bottom: height * 1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showLogo
              ? Row(
                  children: [
                    Image(
                      width: width * 4,
                      image: const AssetImage(tFireLogo),
                    ),
                    SizedBox(width: width * 2),
                    Text(
                      subtitleLeft,
                      style: textHeadlineLarge(context),
                    )
                  ],
                )
              : Text(
                  subtitleLeft,
                  style: textHeadlineLarge(context),
                ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, routeGo(page: screen));
            },
            child: Container(
              decoration: BoxDecoration(
                color: tDarkColor,
                borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: width * 3.8, vertical: width * 2),
              child: Text(
                subtitleRight,
                style: textBodySmallBold(context).copyWith(
                  color: tWhiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
