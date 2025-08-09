import 'package:ecommerce_app/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    final PageController pageController = context
        .read<OnboardingBloc>()
        .pageController;

    return Positioned(
      bottom: CustomDeviceUtils.getBottomNavigationBarHeight() + 25.0,
      left: CustomSizes.defaultSpace,
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return SmoothPageIndicator(
            controller: pageController,
            onDotClicked: (index) {
              context.read<OnboardingBloc>().add(UpdatePageIndex(index: index));
            },
            count: onBoardingScreens.length,
            effect: ExpandingDotsEffect(
              activeDotColor: dark ? CustomColors.light : CustomColors.dark,
              dotHeight: 6.0,
            ),
          );
        },
      ),
    );
  }
}
