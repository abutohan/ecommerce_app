import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/onboarding/data/onboarding.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final PageController pageController = PageController();

  OnboardingBloc() : super(const OnboardingState()) {
    on<UpdatePageIndex>(_updatePageIndex);

    on<OnNextPage>(_nextPage);

    on<OnSkipPage>(_skipPage);
  }

  void _updatePageIndex(UpdatePageIndex event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(currentPageIndex: event.index));
    _swipePage(event.index);
  }

  void _nextPage(OnNextPage event, Emitter<OnboardingState> emit) {
    final int newIndex = state.currentPageIndex + 1;
    if (newIndex <= onBoardingScreens.length - 1) {
      emit(state.copyWith(currentPageIndex: newIndex));
      _swipePage(newIndex);
    }
  }

  void _skipPage(OnSkipPage event, Emitter<OnboardingState> emit) {
    final int lastPage = onBoardingScreens.length - 1;
    emit(state.copyWith(currentPageIndex: lastPage));
    _swipePage(lastPage);
  }

  void _swipePage(
    int page, [
    int duration = CustomTiming.pageViewAnimateDuration,
  ]) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: duration),
      curve: Curves.easeIn,
    );
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
