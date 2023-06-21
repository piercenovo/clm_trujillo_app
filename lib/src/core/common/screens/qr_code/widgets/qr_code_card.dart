import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

class QrCodeCard extends StatelessWidget {
  const QrCodeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;

    return Container(
      width: width * 56,
      height: width * 56,
      decoration: BoxDecoration(
        color: tWhiteColor,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            tInvitationQrCode,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
