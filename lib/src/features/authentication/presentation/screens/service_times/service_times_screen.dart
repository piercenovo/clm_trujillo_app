import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/service_times/widgets/church_card.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/service_times/widgets/weekly_service_times.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/service_times/widgets/contact_us.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/service_times/widgets/invitation_card.dart';

import 'package:boxicons/boxicons.dart';

class ServiceTimesScreen extends StatelessWidget {
  const ServiceTimesScreen({super.key});

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
        title: Text(
          tInvitationAppBar,
          style: textHeadlineMedium(context),
        ),
        centerTitle: true,
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
        child: Container(
          padding: EdgeInsets.only(top: width * 2, bottom: width * 4),
          width: width * 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ChurchCard(),
              SizedBox(height: height * 2),
              const InvitationCard(),
              SizedBox(height: height * 1),
              const WeeklyServiceTimes(),
              SizedBox(height: height * 1),
              const ContactUs(),
            ],
          ),
        ),
      ),
    );
  }
}
