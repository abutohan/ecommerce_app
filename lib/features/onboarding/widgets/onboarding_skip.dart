import 'package:ecommerce_app/utils/utils.dart';

import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CustomDeviceUtils.getAppBarHeight(),
      right: CustomSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: const Text("Skip")),
    );
  }
}
