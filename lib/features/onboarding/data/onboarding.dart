import 'package:ecommerce_app/utils/utils.dart';

class OnBoarding {
  final String image;
  final String title;
  final String subTitle;

  const OnBoarding({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoarding> onBoardingScreens = [
  const OnBoarding(
    image: CustomImages.onBoardingImage1,
    title: CustomText.onBoardingTitle1,
    subTitle: CustomText.onBoardingSubTitle1,
  ),
  const OnBoarding(
    image: CustomImages.onBoardingImage2,
    title: CustomText.onBoardingTitle2,
    subTitle: CustomText.onBoardingSubTitle2,
  ),
  const OnBoarding(
    image: CustomImages.onBoardingImage3,
    title: CustomText.onBoardingTitle3,
    subTitle: CustomText.onBoardingSubTitle3,
  ),
];
