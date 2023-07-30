part of 'on_boarding_bloc.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();
}

class OnboardingTabEvent extends OnBoardingEvent {
  final int currentPage;

  const OnboardingTabEvent({required this.currentPage});

  @override
  List<Object?> get props => [currentPage];
}
