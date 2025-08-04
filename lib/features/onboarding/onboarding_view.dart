import 'package:ecommerce_app/features/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/utils.dart';

import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // -- Horizontal Scrollable Pages
          Positioned(
            // top: CustomDeviceUtils.getScreenHeight(context) / 10,
            child: PageView(
              children: [
                const OnBoardingPage(
                  image: CustomImages.onBoardingImage1,
                  title: CustomText.onBoardingTitle1,
                  subTitle: CustomText.onBoardingSubTitle1,
                ),
                const OnBoardingPage(
                  image: CustomImages.onBoardingImage2,
                  title: CustomText.onBoardingTitle2,
                  subTitle: CustomText.onBoardingSubTitle2,
                ),
                const OnBoardingPage(
                  image: CustomImages.onBoardingImage3,
                  title: CustomText.onBoardingTitle3,
                  subTitle: CustomText.onBoardingSubTitle3,
                ),
              ],
            ),
          ),

          // -- Skip Button
          const OnBoardingSkip(),

          // -- Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // -- Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
