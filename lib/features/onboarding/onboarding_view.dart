import 'package:ecommerce_app/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = context
        .read<OnboardingBloc>()
        .pageController;
    final List<OnBoarding> onBoardingScreen = onBoardingScreens;

    return Scaffold(
      body: Stack(
        children: [
          // -- Horizontal Scrollable Pages
          Column(
            children: [
              const SizedBox(height: CustomSizes.appBarHeight * 2),
              Expanded(
                child: BlocBuilder<OnboardingBloc, OnboardingState>(
                  builder: (context, state) {
                    return PageView.builder(
                      controller: pageController,
                      onPageChanged: (index) {
                        // Dispatch an event to the BLoC when the page changes.
                        context.read<OnboardingBloc>().add(
                          UpdatePageIndex(index: index),
                        );
                      },
                      itemCount: onBoardingScreen.length,
                      itemBuilder: (context, index) {
                        final onBoarding = onBoardingScreen[index];
                        return OnBoardingPage(
                          image: onBoarding.image,
                          title: onBoarding.title,
                          subTitle: onBoarding.title,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
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
