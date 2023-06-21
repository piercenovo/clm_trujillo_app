import 'package:clm_trujillo_app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:boxicons/boxicons.dart';

class FollowChristScreen extends StatelessWidget {
  const FollowChristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;

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
    );
  }
}
