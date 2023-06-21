import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

class InvitationTitle extends StatelessWidget {
  const InvitationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Column(
      children: [
        SizedBox(
          width: width * 75,
          child: Text(
            tInvitationTitle,
            style: textTitleLarge(context),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: height * 1.2),
        Text(
          tInvitationSubtitle,
          style: textBodyMedium(context).copyWith(
            fontSize: width * 3.8,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: height * 3),
      ],
    );
  }
}
