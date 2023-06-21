import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';
import 'package:clm_trujillo_app/src/core/constants/colors.dart';

import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/main/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: tSecondDarkColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: width * 100,
              height: height * 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(tWelcomeImage1),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tOnBoardingTitle4,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 5.5,
                      fontFamily: tFFDMSans,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.5,
                  ),
                  Container(
                    width: width * 40,
                    height: width * 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(tLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                left: width * 5,
                right: width * 5,
                top: height * 1.5,
                bottom: height * 3.5,
              ),
              child: SizedBox(
                height: width * 14,
                width: width * 70,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, routeFade(page: const MainScreen()));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: tPrimaryColor,
                  ),
                  child: Text(
                    tWelcomeButton,
                    style: TextStyle(
                      color: tWhiteColor,
                      fontSize: width * 3.7,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
