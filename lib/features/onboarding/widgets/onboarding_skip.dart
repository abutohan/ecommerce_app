import 'package:ecommerce_app/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:ecommerce_app/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CustomDeviceUtils.getAppBarHeight(),
      right: CustomSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          context.read<OnboardingBloc>().add(OnSkipPage());
        },
        child: const Text("Skip"),
      ),
    );
  }
}
