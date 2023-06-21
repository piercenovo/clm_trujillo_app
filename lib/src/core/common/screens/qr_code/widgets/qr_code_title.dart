import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

class QrCodeTitle extends StatelessWidget {
  const QrCodeTitle({
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
          width: width * 60,
          child: Text(
            tQrCodeTitle,
            style: textTitleLarge(context),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: height * 1.2),
        Text(
          tQrCodeSubtitle,
          style: textBodyMedium(context).copyWith(
            fontSize: width * 3.8,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
