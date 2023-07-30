import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_event.dart';

part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState(currentPage: 0)) {
    on<OnboardingTabEvent>(_changeTabState);
  }

  _changeTabState(
      OnboardingTabEvent event, Emitter<OnBoardingState> emit) async {
    emit(state.copyWith(currentPage: event.currentPage));
  }
}
