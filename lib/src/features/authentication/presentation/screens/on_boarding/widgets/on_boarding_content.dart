import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Container(
      width: width * 100,
      height: height * 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                color: tWhiteColor,
                fontSize: width * 5.5,
                fontFamily: tFFDMSans,
              )),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: tWhiteColor,
              fontSize: width * 17,
              fontFamily: tFFAlexBrush,
              height: 1.1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
