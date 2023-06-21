import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/common/screens/qr_code/qr_code_screen.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

import 'package:boxicons/boxicons.dart';

class TalksScreen extends StatelessWidget {
  const TalksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            expandedHeight: height * 12.5,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                left: width * 4,
                right: width * 4,
                bottom: height * 2,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    tTalksTitle,
                    style: TextStyle(
                      fontFamily: tFFDMSans,
                      color: tExtraLightGrayColor,
                      fontSize: width * 5.2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, routeSlide(page: const QrCodeScreen()));
                    },
                    child: Icon(
                      Boxicons.bxs_user,
                      color: tPrimaryColor,
                      size: width * 5.2,
                    ),
                  ),
                ],
              ),
            ),
            floating: true,
            snap: true,
            pinned: true,
          ),
        ],
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: height * 10,
            left: width * 4,
            right: width * 4,
          ),
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: SizedBox(
            width: width * 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [],
            ),
          ),
        ),
      ),
    );
  }
}
