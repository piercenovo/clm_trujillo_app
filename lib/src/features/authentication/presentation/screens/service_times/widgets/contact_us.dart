import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/helpers/external_links.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

import 'package:clm_trujillo_app/src/features/authentication/data/datasources/local/contact_us_data.dart';

import 'package:boxicons/boxicons.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: height * 1,
            bottom: width * 2,
            left: height * 0.5,
          ),
          child: Text(
            tContactUsTitle,
            style: textHeadlineSmall(context),
          ),
        ),
        Container(
          width: width * 100,
          decoration: BoxDecoration(
            color: tDarkColor,
            borderRadius: BorderRadius.circular(13),
          ),
          padding: EdgeInsets.symmetric(horizontal: width * 3.8),
          child: Column(children: [
            ...List.generate(
              contactUsContent.length,
              (index) => GestureDetector(
                onTap: () {
                  contactUsContent[index].title == tContactUsSubtitle1
                      ? LinkUtils.openCall(contactUsContent[index].launch)
                      : LinkUtils.openApp(contactUsContent[index].launch);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.5,
                  ),
                  width: width * 100,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: index == contactUsContent.length - 1
                        ? Colors.transparent
                        : tExtraLightGrayColor.withOpacity(0.7),
                    width: 0.1,
                  ))),
                  child: Padding(
                    padding: EdgeInsets.only(top: width * 2, bottom: width * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              contactUsContent[index].icon,
                              size: width * 5.5,
                            ),
                            SizedBox(width: width * 4),
                            Text(
                              contactUsContent[index].title,
                              style: textBodyLarge(context),
                            ),
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
            ),
          ]),
        ),
      ],
    );
  }
}
