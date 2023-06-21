import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/common/screens/follow_christ/follow_christ_screen.dart';
import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

class FollowChristCard extends StatelessWidget {
  const FollowChristCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    final top = height * 12;
    final right = width * 100 / 8;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, routeGo(page: const FollowChristScreen()));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                  tHomeFollow,
                ),
                fit: BoxFit.cover,
              ),
            ),
            width: width * 90,
            height: height * 25,
          ),
          Positioned(
              width: width * 70,
              top: top,
              right: right,
              child: Column(
                children: [
                  Text(
                    tHomeContent1,
                    textAlign: TextAlign.center,
                    style: textHeadlineMedium(context),
                  ),
                  SizedBox(height: height * 1.5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, routeGo(page: const FollowChristScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border:
                            Border.all(width: width * 0.2, color: tWhiteColor),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 3.8, vertical: width * 2),
                      child: Text(
                        tReadMore,
                        style: textBodySmallBold(context).copyWith(
                            color: tWhiteColor, fontSize: width * 3.3),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
