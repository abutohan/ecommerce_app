import 'package:ecommerce_app/features/onboarding/onboarding_view.dart';
import 'package:ecommerce_app/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: MultiBlocProvider(
        providers: [BlocProvider(create: (_) => OnboardingBloc())],
        child: const OnBoardingView(),
      ),
    );
  }
}
