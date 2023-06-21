import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/helpers/animation_route.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

import 'package:clm_trujillo_app/src/features/authentication/data/datasources/local/on_boarding_data.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/on_boarding/widgets/dot_indicator.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/on_boarding/widgets/on_boarding_content.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/welcome/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: tSecondaryColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onBoardingContent.length,
              controller: _pageController,
              onPageChanged: (index) => {
                setState(() => {
                      _pageIndex = index,
                    })
              },
              itemBuilder: (context, index) => OnBoardingContent(
                image: onBoardingContent[index].image,
                title: onBoardingContent[index].title,
                subtitle: onBoardingContent[index].subtitle,
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
            child: Row(
              children: [
                ...List.generate(
                  onBoardingContent.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: DotIndicator(isActive: index == _pageIndex),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: width * 13,
                  height: width * 13,
                  child: ElevatedButton(
                      onPressed: () {
                        _pageIndex == onBoardingContent.length - 1
                            ? Navigator.push(
                                context,
                                routeFade(page: const WelcomeScreen()),
                              )
                            : _pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.ease,
                              );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: tPrimaryColor,
                      ),
                      child: Icon(
                        Boxicons.bx_chevron_right,
                        size: width * 6.5,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
