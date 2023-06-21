import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_style.dart';
import 'package:clm_trujillo_app/src/core/utils/size_config.dart';

import 'package:clm_trujillo_app/src/features/authentication/data/datasources/local/service_times_data.dart';

class WeeklyServiceTimes extends StatelessWidget {
  const WeeklyServiceTimes({
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
            tInvitationWeeklyTitle,
            style: textHeadlineSmall(context),
          ),
        ),
        Container(
          width: width * 100,
          decoration: BoxDecoration(
            color: tDarkColor,
            borderRadius: BorderRadius.circular(13),
          ),
          padding: EdgeInsets.symmetric(vertical: width * 2),
          child: Column(children: [
            ...List.generate(serviceTimesContent.length, (index) {
              final serviceTime = serviceTimesContent[index];
              return SizedBox(
                width: width * 100,
                child: Padding(
                  padding: EdgeInsets.only(top: width * 2, bottom: width * 2),
                  child: SizedBox(
                    width: width * 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 4),
                          child: Text(
                            serviceTime.title.toUpperCase(),
                            style: textBodyLarge(context).copyWith(
                              color: tDarkLightColor,
                              fontSize: width * 3.7,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 1),
                        Container(
                          width: width * 100,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                            color: tExtraLightGrayColor.withOpacity(0.7),
                            width: 0.1,
                          ))),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 4),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: height * 1),
                                  Text(
                                    serviceTime.day,
                                    textAlign: TextAlign.start,
                                    style: textBodyLarge(context)
                                        .copyWith(color: tWhiteColor),
                                  ),
                                  SizedBox(height: height * 1),
                                  Row(
                                    children: serviceTime.dates
                                        .map((date) =>
                                            datesCard(context, width, date))
                                        .toList(),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ]),
        ),
      ],
    );
  }

  Container datesCard(BuildContext context, width, String date) {
    return Container(
      margin: EdgeInsets.only(right: width * 2),
      padding:
          EdgeInsets.symmetric(horizontal: width * 1.5, vertical: width * 1.2),
      decoration: BoxDecoration(
        color: tDarKGrayColor,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        date,
        style: textBodySmall(context),
      ),
    );
  }
}
