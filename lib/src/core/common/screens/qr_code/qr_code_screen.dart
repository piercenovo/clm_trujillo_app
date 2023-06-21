import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

import 'package:clm_trujillo_app/src/core/common/screens/qr_code/widgets/qr_code_card.dart';
import 'package:clm_trujillo_app/src/core/common/screens/qr_code/widgets/qr_code_title.dart';

import 'package:boxicons/boxicons.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Boxicons.bx_chevron_left,
            size: width * 8,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: height * 1,
          bottom: height * 2,
          left: width * 4,
          right: width * 4,
        ),
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: SizedBox(
          width: width * 100,
          height: height * 100,
          child: Column(
            children: [
              const QrCodeCard(),
              SizedBox(height: height * 4),
              const QrCodeTitle()
            ],
          ),
        ),
      ),
    );
  }
}
