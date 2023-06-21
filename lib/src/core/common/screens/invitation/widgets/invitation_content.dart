import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/common/screens/qr_code/qr_code_screen.dart';
import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

import 'package:clm_trujillo_app/src/features/authentication/data/datasources/local/invitation_data.dart';

import 'package:share_plus/share_plus.dart';

class InvitationContent extends StatelessWidget {
  const InvitationContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Column(
      children: [
        ...List.generate(
          invitationContent.length,
          (index) => GestureDetector(
            onTap: () async {
              invitationContent[index].title == tInvitationSubtitle2
                  ? Share.share(tInvitationContent1)
                  : Navigator.push(
                      context, routeGo(page: const QrCodeScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(
                bottom: height * 2,
              ),
              width: width * 100,
              decoration: BoxDecoration(
                color: tDarkColor,
                borderRadius: BorderRadius.circular(13),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width * 4.5,
                vertical: height * 1.5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.5),
                    child: Icon(
                      invitationContent[index].icon,
                      size: width * 6,
                    ),
                  ),
                  SizedBox(width: width * 4),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        invitationContent[index].title,
                        style: textHeadlineSmall(context),
                      ),
                      SizedBox(height: height * 0.4),
                      SizedBox(
                        width: width * 70,
                        child: Text(
                          invitationContent[index].subtitle,
                          maxLines: 3,
                          style: textBodySmall(context).copyWith(
                            color: tDarkLightColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
