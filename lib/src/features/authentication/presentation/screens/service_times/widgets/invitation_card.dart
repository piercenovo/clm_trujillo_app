import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/common/screens/invitation/invitation_screen.dart';
import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

import 'package:boxicons/boxicons.dart';

class InvitationCard extends StatelessWidget {
  const InvitationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, routeGo(page: const InvitationScreen()));
      },
      child: Container(
        width: width * 100,
        decoration: BoxDecoration(
          color: tDarkColor,
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 4.5,
          vertical: height * 1.5,
        ),
        child: Row(children: [
          Icon(
            Boxicons.bx_user_plus,
            size: width * 10,
          ),
          SizedBox(width: width * 4),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tInvitationCardTitle,
                style: textHeadlineSmall(context),
              ),
              SizedBox(height: height * 0.4),
              Text(
                tInvitationCardSubtitle,
                style: textBodyMedium(context),
              )
            ],
          )
        ]),
      ),
    );
  }
}
