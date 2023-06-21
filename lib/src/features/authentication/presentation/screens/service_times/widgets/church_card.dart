import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/helpers/external_links.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

import 'package:boxicons/boxicons.dart';

class ChurchCard extends StatelessWidget {
  const ChurchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    final top = height * 13 - width * 8;
    final right = width * 5;

    return Container(
      width: width * 100,
      decoration: BoxDecoration(
        color: tDarkColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: width * 1.5, horizontal: width * 1.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: width * 100,
                  height: height * 13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(tServiceTimesChurch),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: top,
                  right: right,
                  child: Container(
                    padding: EdgeInsets.all(width * 1.5),
                    decoration: BoxDecoration(
                        color: tDarkColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: CircleAvatar(
                      radius: width * 8,
                      backgroundColor: tDarkColor,
                      backgroundImage: const AssetImage(tServiceTimesPastors),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: width * 2.5, horizontal: width * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: textHeadlineSmall(context),
                  ),
                  SizedBox(height: height * 0.5),
                  Text(
                    tNameOfPastors,
                    style: textBodySmall(context).copyWith(
                      color: tDarkLightColor,
                      fontSize: width * 3.45,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                LinkUtils.openApp(tServiceTimesMap);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.5,
                ),
                width: width * 100,
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                  color: tExtraLightGrayColor,
                  width: 0.1,
                ))),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: width * 2,
                    bottom: width * 2,
                    left: width * 2.5,
                    right: width * 2.5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Boxicons.bx_navigation,
                            size: width * 5.5,
                          ),
                          SizedBox(width: width * 4),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tInvitationLocationPart1,
                                style: textBodyLarge(context),
                              ),
                              SizedBox(height: height * 0.2),
                              Text(
                                tInvitationLocationPart2,
                                style: textBodySmall(context),
                              ),
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Boxicons.bx_chevron_right,
                        size: width * 6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
