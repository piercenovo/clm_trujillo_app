import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';

class OnBoarding {
  final String image;
  final String title;
  final String subtitle;

  OnBoarding({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

final List<OnBoarding> onBoardingContent = [
  OnBoarding(
    image: tOnBoardingImage1,
    title: tOnBoardingTitle1,
    subtitle: tOnBoardingSubtitle1,
  ),
  OnBoarding(
    image: tOnBoardingImage2,
    title: tOnBoardingTitle2,
    subtitle: tOnBoardingSubtitle2,
  ),
  OnBoarding(
    image: tOnBoardingImage3,
    title: tOnBoardingTitle3,
    subtitle: tOnBoardingSubtitle3,
  )
];
