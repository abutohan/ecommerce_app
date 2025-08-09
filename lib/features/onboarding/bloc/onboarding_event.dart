part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class UpdatePageIndex extends OnboardingEvent {
  final int index;
  const UpdatePageIndex({required this.index});

  @override
  List<Object> get props => [index];
}

class OnNextPage extends OnboardingEvent {}

class OnSkipPage extends OnboardingEvent {}
